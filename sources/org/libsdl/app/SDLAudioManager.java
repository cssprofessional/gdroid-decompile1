package org.libsdl.app;

import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class SDLAudioManager {
    protected static final String TAG = "SDLAudio";
    protected static AudioRecord mAudioRecord;
    protected static AudioTrack mAudioTrack;

    public static native int nativeSetupJNI();

    public static void initialize() {
        mAudioTrack = null;
        mAudioRecord = null;
    }

    public static String getAudioFormatString(int i) {
        if (i == 2) {
            return "16-bit";
        }
        if (i == 3) {
            return "8-bit";
        }
        if (i == 4) {
            return "float";
        }
        return Integer.toString(i);
    }

    public static int[] open(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int minBufferSize;
        int[] iArr;
        String str;
        char c;
        char c2;
        char c3;
        int i8 = i3;
        StringBuilder sb = new StringBuilder();
        sb.append("Opening ");
        sb.append(z ? "capture" : "playback");
        sb.append(", requested ");
        sb.append(i4);
        sb.append(" frames of ");
        sb.append(i8);
        sb.append(" channel ");
        sb.append(getAudioFormatString(i2));
        sb.append(" audio at ");
        sb.append(i);
        sb.append(" Hz");
        Log.v(TAG, sb.toString());
        int i9 = Build.VERSION.SDK_INT;
        int i10 = i2;
        if (i10 == 4) {
            if (i9 < (z ? 23 : 21)) {
                i10 = 2;
            }
        }
        if (i10 == 2) {
            i5 = i10;
            i6 = 2;
        } else if (i10 == 3) {
            i5 = i10;
            i6 = 1;
        } else if (i10 != 4) {
            Log.v(TAG, "Requested format " + i10 + ", getting ENCODING_PCM_16BIT");
            i5 = 2;
            i6 = 2;
        } else {
            i5 = i10;
            i6 = 4;
        }
        if (!z) {
            switch (i8) {
                case 1:
                    i7 = 4;
                    break;
                case 2:
                    i7 = 12;
                    break;
                case 3:
                    i7 = 28;
                    break;
                case 4:
                    i7 = 204;
                    break;
                case 5:
                    i7 = 220;
                    break;
                case 6:
                    i7 = 252;
                    break;
                case 7:
                    i7 = 1276;
                    break;
                case 8:
                    i7 = 6396;
                    break;
                default:
                    Log.v(TAG, "Requested " + i8 + " channels, getting stereo");
                    i7 = 12;
                    i8 = 2;
                    break;
            }
        } else if (i8 != 1) {
            if (i8 != 2) {
                Log.v(TAG, "Requested " + i8 + " channels, getting stereo");
                i7 = 12;
                i8 = 2;
            }
            i7 = 12;
        } else {
            i7 = 16;
        }
        int i11 = i6 * i8;
        if (z) {
            minBufferSize = AudioRecord.getMinBufferSize(i, i7, i5);
        } else {
            minBufferSize = AudioTrack.getMinBufferSize(i, i7, i5);
        }
        int iMax = Math.max(i4, ((minBufferSize + i11) - 1) / i11);
        int[] iArr2 = new int[4];
        if (z) {
            if (SDLActivity.getContext().checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
                return null;
            }
            if (mAudioRecord == null) {
                iArr = iArr2;
                AudioRecord audioRecord = new AudioRecord(0, i, i7, i5, i11 * iMax);
                mAudioRecord = audioRecord;
                int state = audioRecord.getState();
                c3 = 1;
                if (state != 1) {
                    Log.e(TAG, "Failed during initialization of AudioRecord");
                    mAudioRecord.release();
                    mAudioRecord = null;
                    return null;
                }
                mAudioRecord.startRecording();
            } else {
                iArr = iArr2;
                c3 = 1;
            }
            iArr[0] = mAudioRecord.getSampleRate();
            iArr[c3] = mAudioRecord.getAudioFormat();
            iArr[2] = mAudioRecord.getChannelCount();
            str = "playback";
            c = 3;
            c2 = c3;
        } else {
            iArr = iArr2;
            if (mAudioTrack == null) {
                str = "playback";
                c = 3;
                c2 = 1;
                AudioTrack audioTrack = new AudioTrack(3, i, i7, i5, i11 * iMax, 1);
                mAudioTrack = audioTrack;
                if (audioTrack.getState() != 1) {
                    Log.e(TAG, "Failed during initialization of Audio Track");
                    mAudioTrack.release();
                    mAudioTrack = null;
                    return null;
                }
                mAudioTrack.play();
            } else {
                str = "playback";
                c = 3;
                c2 = 1;
            }
            iArr[0] = mAudioTrack.getSampleRate();
            iArr[c2] = mAudioTrack.getAudioFormat();
            iArr[2] = mAudioTrack.getChannelCount();
        }
        iArr[c] = iMax;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Opening ");
        sb2.append(z ? "capture" : str);
        sb2.append(", got ");
        sb2.append(iArr[c]);
        sb2.append(" frames of ");
        sb2.append(iArr[2]);
        sb2.append(" channel ");
        sb2.append(getAudioFormatString(iArr[c2]));
        sb2.append(" audio at ");
        sb2.append(iArr[0]);
        sb2.append(" Hz");
        Log.v(TAG, sb2.toString());
        return iArr;
    }

    public static int[] audioOpen(int i, int i2, int i3, int i4) {
        return open(false, i, i2, i3, i4);
    }

    public static void audioWriteFloatBuffer(float[] fArr) {
        if (mAudioTrack == null) {
            Log.e(TAG, "Attempted to make audio call with uninitialized audio!");
            return;
        }
        int i = 0;
        while (i < fArr.length) {
            int iWrite = mAudioTrack.write(fArr, i, fArr.length - i, 0);
            if (iWrite > 0) {
                i += iWrite;
            } else if (iWrite == 0) {
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException unused) {
                }
            } else {
                Log.w(TAG, "SDL audio: error return from write(float)");
                return;
            }
        }
    }

    public static void audioWriteShortBuffer(short[] sArr) {
        if (mAudioTrack == null) {
            Log.e(TAG, "Attempted to make audio call with uninitialized audio!");
            return;
        }
        int i = 0;
        while (i < sArr.length) {
            int iWrite = mAudioTrack.write(sArr, i, sArr.length - i);
            if (iWrite > 0) {
                i += iWrite;
            } else if (iWrite == 0) {
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException unused) {
                }
            } else {
                Log.w(TAG, "SDL audio: error return from write(short)");
                return;
            }
        }
    }

    public static void audioWriteByteBuffer(byte[] bArr) {
        if (mAudioTrack == null) {
            Log.e(TAG, "Attempted to make audio call with uninitialized audio!");
            return;
        }
        int i = 0;
        while (i < bArr.length) {
            int iWrite = mAudioTrack.write(bArr, i, bArr.length - i);
            if (iWrite > 0) {
                i += iWrite;
            } else if (iWrite == 0) {
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException unused) {
                }
            } else {
                Log.w(TAG, "SDL audio: error return from write(byte)");
                return;
            }
        }
    }

    public static int[] captureOpen(int i, int i2, int i3, int i4) {
        return open(true, i, i2, i3, i4);
    }

    public static int captureReadFloatBuffer(float[] fArr, boolean z) {
        return mAudioRecord.read(fArr, 0, fArr.length, !z ? 1 : 0);
    }

    public static int captureReadShortBuffer(short[] sArr, boolean z) {
        return mAudioRecord.read(sArr, 0, sArr.length, !z ? 1 : 0);
    }

    public static int captureReadByteBuffer(byte[] bArr, boolean z) {
        return mAudioRecord.read(bArr, 0, bArr.length, !z ? 1 : 0);
    }

    public static void audioClose() {
        AudioTrack audioTrack = mAudioTrack;
        if (audioTrack != null) {
            audioTrack.stop();
            mAudioTrack.release();
            mAudioTrack = null;
        }
    }

    public static void captureClose() {
        AudioRecord audioRecord = mAudioRecord;
        if (audioRecord != null) {
            audioRecord.stop();
            mAudioRecord.release();
            mAudioRecord = null;
        }
    }

    public static void audioSetThreadPriority(boolean z, int i) {
        try {
            if (z) {
                Thread.currentThread().setName("SDLAudioC" + i);
            } else {
                Thread.currentThread().setName("SDLAudioP" + i);
            }
            Process.setThreadPriority(-16);
        } catch (Exception e) {
            Log.v(TAG, "modify thread properties failed " + e.toString());
        }
    }
}
