package io.ktor.http;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: compiled from: HttpStatusCode.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpStatusCode implements Comparable<HttpStatusCode> {
    public static final List<HttpStatusCode> allStatusCodes;
    public static final Map<Integer, HttpStatusCode> statusCodesMap;
    public final String description;
    public final int value;
    public static final Companion Companion = new Companion(null);
    public static final HttpStatusCode Continue = new HttpStatusCode(100, "Continue");
    public static final HttpStatusCode SwitchingProtocols = new HttpStatusCode(SteammessagesClientserverLogin.CMsgClientLogon.TWO_FACTOR_CODE_FIELD_NUMBER, "Switching Protocols");
    public static final HttpStatusCode Processing = new HttpStatusCode(SteammessagesClientserverLogin.CMsgClientLogon.SUPPORTS_RATE_LIMIT_RESPONSE_FIELD_NUMBER, "Processing");
    public static final HttpStatusCode OK = new HttpStatusCode(200, "OK");
    public static final HttpStatusCode Created = new HttpStatusCode(201, "Created");
    public static final HttpStatusCode Accepted = new HttpStatusCode(202, "Accepted");
    public static final HttpStatusCode NonAuthoritativeInformation = new HttpStatusCode(203, "Non-Authoritative Information");
    public static final HttpStatusCode NoContent = new HttpStatusCode(204, "No Content");
    public static final HttpStatusCode ResetContent = new HttpStatusCode(205, "Reset Content");
    public static final HttpStatusCode PartialContent = new HttpStatusCode(206, "Partial Content");
    public static final HttpStatusCode MultiStatus = new HttpStatusCode(207, "Multi-Status");
    public static final HttpStatusCode MultipleChoices = new HttpStatusCode(300, "Multiple Choices");
    public static final HttpStatusCode MovedPermanently = new HttpStatusCode(301, "Moved Permanently");
    public static final HttpStatusCode Found = new HttpStatusCode(302, "Found");
    public static final HttpStatusCode SeeOther = new HttpStatusCode(303, "See Other");
    public static final HttpStatusCode NotModified = new HttpStatusCode(304, "Not Modified");
    public static final HttpStatusCode UseProxy = new HttpStatusCode(305, "Use Proxy");
    public static final HttpStatusCode SwitchProxy = new HttpStatusCode(306, "Switch Proxy");
    public static final HttpStatusCode TemporaryRedirect = new HttpStatusCode(307, "Temporary Redirect");
    public static final HttpStatusCode PermanentRedirect = new HttpStatusCode(308, "Permanent Redirect");
    public static final HttpStatusCode BadRequest = new HttpStatusCode(400, "Bad Request");
    public static final HttpStatusCode Unauthorized = new HttpStatusCode(401, "Unauthorized");
    public static final HttpStatusCode PaymentRequired = new HttpStatusCode(402, "Payment Required");
    public static final HttpStatusCode Forbidden = new HttpStatusCode(403, "Forbidden");
    public static final HttpStatusCode NotFound = new HttpStatusCode(404, "Not Found");
    public static final HttpStatusCode MethodNotAllowed = new HttpStatusCode(405, "Method Not Allowed");
    public static final HttpStatusCode NotAcceptable = new HttpStatusCode(406, "Not Acceptable");
    public static final HttpStatusCode ProxyAuthenticationRequired = new HttpStatusCode(407, "Proxy Authentication Required");
    public static final HttpStatusCode RequestTimeout = new HttpStatusCode(408, "Request Timeout");
    public static final HttpStatusCode Conflict = new HttpStatusCode(409, "Conflict");
    public static final HttpStatusCode Gone = new HttpStatusCode(410, "Gone");
    public static final HttpStatusCode LengthRequired = new HttpStatusCode(411, "Length Required");
    public static final HttpStatusCode PreconditionFailed = new HttpStatusCode(412, "Precondition Failed");
    public static final HttpStatusCode PayloadTooLarge = new HttpStatusCode(413, "Payload Too Large");
    public static final HttpStatusCode RequestURITooLong = new HttpStatusCode(414, "Request-URI Too Long");
    public static final HttpStatusCode UnsupportedMediaType = new HttpStatusCode(415, "Unsupported Media Type");
    public static final HttpStatusCode RequestedRangeNotSatisfiable = new HttpStatusCode(DilithiumEngine.DilithiumPolyT0PackedBytes, "Requested Range Not Satisfiable");
    public static final HttpStatusCode ExpectationFailed = new HttpStatusCode(417, "Expectation Failed");
    public static final HttpStatusCode UnprocessableEntity = new HttpStatusCode(422, "Unprocessable Entity");
    public static final HttpStatusCode Locked = new HttpStatusCode(423, "Locked");
    public static final HttpStatusCode FailedDependency = new HttpStatusCode(424, "Failed Dependency");
    public static final HttpStatusCode TooEarly = new HttpStatusCode(425, "Too Early");
    public static final HttpStatusCode UpgradeRequired = new HttpStatusCode(426, "Upgrade Required");
    public static final HttpStatusCode TooManyRequests = new HttpStatusCode(429, "Too Many Requests");
    public static final HttpStatusCode RequestHeaderFieldTooLarge = new HttpStatusCode(431, "Request Header Fields Too Large");
    public static final HttpStatusCode InternalServerError = new HttpStatusCode(500, "Internal Server Error");
    public static final HttpStatusCode NotImplemented = new HttpStatusCode(501, "Not Implemented");
    public static final HttpStatusCode BadGateway = new HttpStatusCode(502, "Bad Gateway");
    public static final HttpStatusCode ServiceUnavailable = new HttpStatusCode(503, "Service Unavailable");
    public static final HttpStatusCode GatewayTimeout = new HttpStatusCode(504, "Gateway Timeout");
    public static final HttpStatusCode VersionNotSupported = new HttpStatusCode(505, "HTTP Version Not Supported");
    public static final HttpStatusCode VariantAlsoNegotiates = new HttpStatusCode(506, "Variant Also Negotiates");
    public static final HttpStatusCode InsufficientStorage = new HttpStatusCode(507, "Insufficient Storage");

    public HttpStatusCode(int i, String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        this.value = i;
        this.description = description;
    }

    public final int getValue() {
        return this.value;
    }

    public String toString() {
        return this.value + ' ' + this.description;
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpStatusCode) && ((HttpStatusCode) obj).value == this.value;
    }

    public int hashCode() {
        return Integer.hashCode(this.value);
    }

    @Override // java.lang.Comparable
    public int compareTo(HttpStatusCode other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.value - other.value;
    }

    /* JADX INFO: compiled from: HttpStatusCode.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final HttpStatusCode getContinue() {
            return HttpStatusCode.Continue;
        }

        public final HttpStatusCode getSwitchingProtocols() {
            return HttpStatusCode.SwitchingProtocols;
        }

        public final HttpStatusCode getProcessing() {
            return HttpStatusCode.Processing;
        }

        public final HttpStatusCode getOK() {
            return HttpStatusCode.OK;
        }

        public final HttpStatusCode getCreated() {
            return HttpStatusCode.Created;
        }

        public final HttpStatusCode getAccepted() {
            return HttpStatusCode.Accepted;
        }

        public final HttpStatusCode getNonAuthoritativeInformation() {
            return HttpStatusCode.NonAuthoritativeInformation;
        }

        public final HttpStatusCode getNoContent() {
            return HttpStatusCode.NoContent;
        }

        public final HttpStatusCode getResetContent() {
            return HttpStatusCode.ResetContent;
        }

        public final HttpStatusCode getPartialContent() {
            return HttpStatusCode.PartialContent;
        }

        public final HttpStatusCode getMultiStatus() {
            return HttpStatusCode.MultiStatus;
        }

        public final HttpStatusCode getMultipleChoices() {
            return HttpStatusCode.MultipleChoices;
        }

        public final HttpStatusCode getMovedPermanently() {
            return HttpStatusCode.MovedPermanently;
        }

        public final HttpStatusCode getFound() {
            return HttpStatusCode.Found;
        }

        public final HttpStatusCode getSeeOther() {
            return HttpStatusCode.SeeOther;
        }

        public final HttpStatusCode getNotModified() {
            return HttpStatusCode.NotModified;
        }

        public final HttpStatusCode getUseProxy() {
            return HttpStatusCode.UseProxy;
        }

        public final HttpStatusCode getSwitchProxy() {
            return HttpStatusCode.SwitchProxy;
        }

        public final HttpStatusCode getTemporaryRedirect() {
            return HttpStatusCode.TemporaryRedirect;
        }

        public final HttpStatusCode getPermanentRedirect() {
            return HttpStatusCode.PermanentRedirect;
        }

        public final HttpStatusCode getBadRequest() {
            return HttpStatusCode.BadRequest;
        }

        public final HttpStatusCode getUnauthorized() {
            return HttpStatusCode.Unauthorized;
        }

        public final HttpStatusCode getPaymentRequired() {
            return HttpStatusCode.PaymentRequired;
        }

        public final HttpStatusCode getForbidden() {
            return HttpStatusCode.Forbidden;
        }

        public final HttpStatusCode getNotFound() {
            return HttpStatusCode.NotFound;
        }

        public final HttpStatusCode getMethodNotAllowed() {
            return HttpStatusCode.MethodNotAllowed;
        }

        public final HttpStatusCode getNotAcceptable() {
            return HttpStatusCode.NotAcceptable;
        }

        public final HttpStatusCode getProxyAuthenticationRequired() {
            return HttpStatusCode.ProxyAuthenticationRequired;
        }

        public final HttpStatusCode getRequestTimeout() {
            return HttpStatusCode.RequestTimeout;
        }

        public final HttpStatusCode getConflict() {
            return HttpStatusCode.Conflict;
        }

        public final HttpStatusCode getGone() {
            return HttpStatusCode.Gone;
        }

        public final HttpStatusCode getLengthRequired() {
            return HttpStatusCode.LengthRequired;
        }

        public final HttpStatusCode getPreconditionFailed() {
            return HttpStatusCode.PreconditionFailed;
        }

        public final HttpStatusCode getPayloadTooLarge() {
            return HttpStatusCode.PayloadTooLarge;
        }

        public final HttpStatusCode getRequestURITooLong() {
            return HttpStatusCode.RequestURITooLong;
        }

        public final HttpStatusCode getUnsupportedMediaType() {
            return HttpStatusCode.UnsupportedMediaType;
        }

        public final HttpStatusCode getRequestedRangeNotSatisfiable() {
            return HttpStatusCode.RequestedRangeNotSatisfiable;
        }

        public final HttpStatusCode getExpectationFailed() {
            return HttpStatusCode.ExpectationFailed;
        }

        public final HttpStatusCode getUnprocessableEntity() {
            return HttpStatusCode.UnprocessableEntity;
        }

        public final HttpStatusCode getLocked() {
            return HttpStatusCode.Locked;
        }

        public final HttpStatusCode getFailedDependency() {
            return HttpStatusCode.FailedDependency;
        }

        public final HttpStatusCode getTooEarly() {
            return HttpStatusCode.TooEarly;
        }

        public final HttpStatusCode getUpgradeRequired() {
            return HttpStatusCode.UpgradeRequired;
        }

        public final HttpStatusCode getTooManyRequests() {
            return HttpStatusCode.TooManyRequests;
        }

        public final HttpStatusCode getRequestHeaderFieldTooLarge() {
            return HttpStatusCode.RequestHeaderFieldTooLarge;
        }

        public final HttpStatusCode getInternalServerError() {
            return HttpStatusCode.InternalServerError;
        }

        public final HttpStatusCode getNotImplemented() {
            return HttpStatusCode.NotImplemented;
        }

        public final HttpStatusCode getBadGateway() {
            return HttpStatusCode.BadGateway;
        }

        public final HttpStatusCode getServiceUnavailable() {
            return HttpStatusCode.ServiceUnavailable;
        }

        public final HttpStatusCode getGatewayTimeout() {
            return HttpStatusCode.GatewayTimeout;
        }

        public final HttpStatusCode getVersionNotSupported() {
            return HttpStatusCode.VersionNotSupported;
        }

        public final HttpStatusCode getVariantAlsoNegotiates() {
            return HttpStatusCode.VariantAlsoNegotiates;
        }

        public final HttpStatusCode getInsufficientStorage() {
            return HttpStatusCode.InsufficientStorage;
        }
    }

    static {
        List<HttpStatusCode> listAllStatusCodes = HttpStatusCodeKt.allStatusCodes();
        allStatusCodes = listAllStatusCodes;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listAllStatusCodes, 10)), 16));
        for (Object obj : listAllStatusCodes) {
            linkedHashMap.put(Integer.valueOf(((HttpStatusCode) obj).value), obj);
        }
        statusCodesMap = linkedHashMap;
    }
}
