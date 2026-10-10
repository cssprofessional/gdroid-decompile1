###### Class io.ktor.http.HttpHeaders (io.ktor.http.HttpHeaders)
.class public final Lio/ktor/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpHeaders.kt\nio/ktor/http/HttpHeaders\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,222:1\n12970#2,2:223\n1188#3,3:225\n1188#3,3:228\n*S KotlinDebug\n*F\n+ 1 HttpHeaders.kt\nio/ktor/http/HttpHeaders\n*L\n134#1:223,2\n159#1:225,3\n172#1:228,3\n*E\n"
.end annotation


# static fields
.field public static final ALPN:Ljava/lang/String;

.field public static final Accept:Ljava/lang/String;

.field public static final AcceptCharset:Ljava/lang/String;

.field public static final AcceptEncoding:Ljava/lang/String;

.field public static final AcceptLanguage:Ljava/lang/String;

.field public static final AcceptRanges:Ljava/lang/String;

.field public static final AccessControlAllowCredentials:Ljava/lang/String;

.field public static final AccessControlAllowHeaders:Ljava/lang/String;

.field public static final AccessControlAllowMethods:Ljava/lang/String;

.field public static final AccessControlAllowOrigin:Ljava/lang/String;

.field public static final AccessControlExposeHeaders:Ljava/lang/String;

.field public static final AccessControlMaxAge:Ljava/lang/String;

.field public static final AccessControlRequestHeaders:Ljava/lang/String;

.field public static final AccessControlRequestMethod:Ljava/lang/String;

.field public static final Age:Ljava/lang/String;

.field public static final Allow:Ljava/lang/String;

.field public static final AuthenticationInfo:Ljava/lang/String;

.field public static final Authorization:Ljava/lang/String;

.field public static final CacheControl:Ljava/lang/String;

.field public static final Connection:Ljava/lang/String;

.field public static final ContentDisposition:Ljava/lang/String;

.field public static final ContentEncoding:Ljava/lang/String;

.field public static final ContentLanguage:Ljava/lang/String;

.field public static final ContentLength:Ljava/lang/String;

.field public static final ContentLocation:Ljava/lang/String;

.field public static final ContentRange:Ljava/lang/String;

.field public static final ContentType:Ljava/lang/String;

.field public static final Cookie:Ljava/lang/String;

.field public static final DASL:Ljava/lang/String;

.field public static final DAV:Ljava/lang/String;

.field public static final Date:Ljava/lang/String;

.field public static final Depth:Ljava/lang/String;

.field public static final Destination:Ljava/lang/String;

.field public static final ETag:Ljava/lang/String;

.field public static final Expect:Ljava/lang/String;

.field public static final Expires:Ljava/lang/String;

.field public static final Forwarded:Ljava/lang/String;

.field public static final From:Ljava/lang/String;

.field public static final HTTP2Settings:Ljava/lang/String;

.field public static final Host:Ljava/lang/String;

.field public static final INSTANCE:Lio/ktor/http/HttpHeaders;

.field public static final If:Ljava/lang/String;

.field public static final IfMatch:Ljava/lang/String;

.field public static final IfModifiedSince:Ljava/lang/String;

.field public static final IfNoneMatch:Ljava/lang/String;

.field public static final IfRange:Ljava/lang/String;

.field public static final IfScheduleTagMatch:Ljava/lang/String;

.field public static final IfUnmodifiedSince:Ljava/lang/String;

.field public static final LastEventID:Ljava/lang/String;

.field public static final LastModified:Ljava/lang/String;

.field public static final Link:Ljava/lang/String;

.field public static final Location:Ljava/lang/String;

.field public static final LockToken:Ljava/lang/String;

.field public static final MIMEVersion:Ljava/lang/String;

.field public static final MaxForwards:Ljava/lang/String;

.field public static final OrderingType:Ljava/lang/String;

.field public static final Origin:Ljava/lang/String;

.field public static final Overwrite:Ljava/lang/String;

.field public static final Position:Ljava/lang/String;

.field public static final Pragma:Ljava/lang/String;

.field public static final Prefer:Ljava/lang/String;

.field public static final PreferenceApplied:Ljava/lang/String;

.field public static final ProxyAuthenticate:Ljava/lang/String;

.field public static final ProxyAuthenticationInfo:Ljava/lang/String;

.field public static final ProxyAuthorization:Ljava/lang/String;

.field public static final PublicKeyPins:Ljava/lang/String;

.field public static final PublicKeyPinsReportOnly:Ljava/lang/String;

.field public static final Range:Ljava/lang/String;

.field public static final Referrer:Ljava/lang/String;

.field public static final RetryAfter:Ljava/lang/String;

.field public static final SLUG:Ljava/lang/String;

.field public static final ScheduleReply:Ljava/lang/String;

.field public static final ScheduleTag:Ljava/lang/String;

.field public static final SecWebSocketAccept:Ljava/lang/String;

.field public static final SecWebSocketExtensions:Ljava/lang/String;

.field public static final SecWebSocketKey:Ljava/lang/String;

.field public static final SecWebSocketProtocol:Ljava/lang/String;

.field public static final SecWebSocketVersion:Ljava/lang/String;

.field public static final Server:Ljava/lang/String;

.field public static final SetCookie:Ljava/lang/String;

.field public static final StrictTransportSecurity:Ljava/lang/String;

.field public static final TE:Ljava/lang/String;

.field public static final Timeout:Ljava/lang/String;

.field public static final Trailer:Ljava/lang/String;

.field public static final TransferEncoding:Ljava/lang/String;

.field public static final UnsafeHeadersArray:[Ljava/lang/String;

.field public static final UnsafeHeadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Upgrade:Ljava/lang/String;

.field public static final UserAgent:Ljava/lang/String;

.field public static final Vary:Ljava/lang/String;

.field public static final Via:Ljava/lang/String;

.field public static final WWWAuthenticate:Ljava/lang/String;

.field public static final Warning:Ljava/lang/String;

.field public static final XCorrelationId:Ljava/lang/String;

.field public static final XForwardedFor:Ljava/lang/String;

.field public static final XForwardedHost:Ljava/lang/String;

.field public static final XForwardedPort:Ljava/lang/String;

.field public static final XForwardedProto:Ljava/lang/String;

.field public static final XForwardedServer:Ljava/lang/String;

.field public static final XHttpMethodOverride:Ljava/lang/String;

.field public static final XRequestId:Ljava/lang/String;

.field public static final XTotalCount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/ktor/http/HttpHeaders;

    invoke-direct {v0}, Lio/ktor/http/HttpHeaders;-><init>()V

    sput-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    .line 12
    const-string v0, "Accept"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Accept:Ljava/lang/String;

    .line 13
    const-string v0, "Accept-Charset"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AcceptCharset:Ljava/lang/String;

    .line 14
    const-string v0, "Accept-Encoding"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AcceptEncoding:Ljava/lang/String;

    .line 15
    const-string v0, "Accept-Language"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AcceptLanguage:Ljava/lang/String;

    .line 16
    const-string v0, "Accept-Ranges"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AcceptRanges:Ljava/lang/String;

    .line 17
    const-string v0, "Age"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Age:Ljava/lang/String;

    .line 18
    const-string v0, "Allow"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Allow:Ljava/lang/String;

    .line 21
    const-string v0, "ALPN"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ALPN:Ljava/lang/String;

    .line 22
    const-string v0, "Authentication-Info"

    sput-object v0, Lio/ktor/http/HttpHeaders;->AuthenticationInfo:Ljava/lang/String;

    .line 23
    const-string v0, "Authorization"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Authorization:Ljava/lang/String;

    .line 24
    const-string v0, "Cache-Control"

    sput-object v0, Lio/ktor/http/HttpHeaders;->CacheControl:Ljava/lang/String;

    .line 25
    const-string v0, "Connection"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Connection:Ljava/lang/String;

    .line 26
    const-string v0, "Content-Disposition"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentDisposition:Ljava/lang/String;

    .line 27
    const-string v0, "Content-Encoding"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentEncoding:Ljava/lang/String;

    .line 28
    const-string v0, "Content-Language"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentLanguage:Ljava/lang/String;

    .line 29
    const-string v0, "Content-Length"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentLength:Ljava/lang/String;

    .line 30
    const-string v0, "Content-Location"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentLocation:Ljava/lang/String;

    .line 31
    const-string v0, "Content-Range"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentRange:Ljava/lang/String;

    .line 32
    const-string v0, "Content-Type"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ContentType:Ljava/lang/String;

    .line 33
    const-string v0, "Cookie"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Cookie:Ljava/lang/String;

    .line 36
    const-string v0, "DASL"

    sput-object v0, Lio/ktor/http/HttpHeaders;->DASL:Ljava/lang/String;

    .line 37
    const-string v0, "Date"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Date:Ljava/lang/String;

    .line 40
    const-string v0, "DAV"

    sput-object v0, Lio/ktor/http/HttpHeaders;->DAV:Ljava/lang/String;

    .line 41
    const-string v0, "Depth"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Depth:Ljava/lang/String;

    .line 43
    const-string v0, "Destination"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Destination:Ljava/lang/String;

    .line 44
    const-string v0, "ETag"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ETag:Ljava/lang/String;

    .line 45
    const-string v0, "Expect"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Expect:Ljava/lang/String;

    .line 46
    const-string v0, "Expires"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Expires:Ljava/lang/String;

    .line 47
    const-string v0, "From"

    sput-object v0, Lio/ktor/http/HttpHeaders;->From:Ljava/lang/String;

    .line 48
    const-string v0, "Forwarded"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Forwarded:Ljava/lang/String;

    .line 49
    const-string v0, "Host"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Host:Ljava/lang/String;

    .line 50
    const-string v0, "HTTP2-Settings"

    sput-object v0, Lio/ktor/http/HttpHeaders;->HTTP2Settings:Ljava/lang/String;

    .line 51
    const-string v0, "If"

    sput-object v0, Lio/ktor/http/HttpHeaders;->If:Ljava/lang/String;

    .line 52
    const-string v0, "If-Match"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfMatch:Ljava/lang/String;

    .line 53
    const-string v0, "If-Modified-Since"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfModifiedSince:Ljava/lang/String;

    .line 54
    const-string v0, "If-None-Match"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfNoneMatch:Ljava/lang/String;

    .line 55
    const-string v0, "If-Range"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfRange:Ljava/lang/String;

    .line 56
    const-string v0, "If-Schedule-Tag-Match"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfScheduleTagMatch:Ljava/lang/String;

    .line 57
    const-string v0, "If-Unmodified-Since"

    sput-object v0, Lio/ktor/http/HttpHeaders;->IfUnmodifiedSince:Ljava/lang/String;

    .line 58
    const-string v0, "Last-Modified"

    sput-object v0, Lio/ktor/http/HttpHeaders;->LastModified:Ljava/lang/String;

    .line 59
    const-string v0, "Location"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Location:Ljava/lang/String;

    .line 60
    const-string v0, "Lock-Token"

    sput-object v0, Lio/ktor/http/HttpHeaders;->LockToken:Ljava/lang/String;

    .line 61
    const-string v0, "Link"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Link:Ljava/lang/String;

    .line 62
    const-string v0, "Max-Forwards"

    sput-object v0, Lio/ktor/http/HttpHeaders;->MaxForwards:Ljava/lang/String;

    .line 63
    const-string v0, "MIME-Version"

    sput-object v0, Lio/ktor/http/HttpHeaders;->MIMEVersion:Ljava/lang/String;

    .line 64
    const-string v0, "Ordering-Type"

    sput-object v0, Lio/ktor/http/HttpHeaders;->OrderingType:Ljava/lang/String;

    .line 65
    const-string v0, "Origin"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Origin:Ljava/lang/String;

    .line 66
    const-string v0, "Overwrite"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Overwrite:Ljava/lang/String;

    .line 67
    const-string v0, "Position"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Position:Ljava/lang/String;

    .line 68
    const-string v0, "Pragma"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Pragma:Ljava/lang/String;

    .line 69
    const-string v0, "Prefer"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Prefer:Ljava/lang/String;

    .line 70
    const-string v0, "Preference-Applied"

    sput-object v0, Lio/ktor/http/HttpHeaders;->PreferenceApplied:Ljava/lang/String;

    .line 71
    const-string v0, "Proxy-Authenticate"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ProxyAuthenticate:Ljava/lang/String;

    .line 72
    const-string v0, "Proxy-Authentication-Info"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ProxyAuthenticationInfo:Ljava/lang/String;

    .line 73
    const-string v0, "Proxy-Authorization"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ProxyAuthorization:Ljava/lang/String;

    .line 74
    const-string v0, "Public-Key-Pins"

    sput-object v0, Lio/ktor/http/HttpHeaders;->PublicKeyPins:Ljava/lang/String;

    .line 75
    const-string v0, "Public-Key-Pins-Report-Only"

    sput-object v0, Lio/ktor/http/HttpHeaders;->PublicKeyPinsReportOnly:Ljava/lang/String;

    .line 76
    const-string v0, "Range"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Range:Ljava/lang/String;

    .line 77
    const-string v0, "Referer"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Referrer:Ljava/lang/String;

    .line 78
    const-string v0, "Retry-After"

    sput-object v0, Lio/ktor/http/HttpHeaders;->RetryAfter:Ljava/lang/String;

    .line 79
    const-string v0, "Schedule-Reply"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ScheduleReply:Ljava/lang/String;

    .line 80
    const-string v0, "Schedule-Tag"

    sput-object v0, Lio/ktor/http/HttpHeaders;->ScheduleTag:Ljava/lang/String;

    .line 81
    const-string v0, "Sec-WebSocket-Accept"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketAccept:Ljava/lang/String;

    .line 82
    const-string v0, "Sec-WebSocket-Extensions"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketExtensions:Ljava/lang/String;

    .line 83
    const-string v0, "Sec-WebSocket-Key"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketKey:Ljava/lang/String;

    .line 84
    const-string v0, "Sec-WebSocket-Protocol"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketProtocol:Ljava/lang/String;

    .line 85
    const-string v0, "Sec-WebSocket-Version"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SecWebSocketVersion:Ljava/lang/String;

    .line 86
    const-string v0, "Server"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Server:Ljava/lang/String;

    .line 87
    const-string v0, "Set-Cookie"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SetCookie:Ljava/lang/String;

    .line 90
    const-string v0, "SLUG"

    sput-object v0, Lio/ktor/http/HttpHeaders;->SLUG:Ljava/lang/String;

    .line 91
    const-string v0, "Strict-Transport-Security"

    sput-object v0, Lio/ktor/http/HttpHeaders;->StrictTransportSecurity:Ljava/lang/String;

    .line 92
    const-string v0, "TE"

    sput-object v0, Lio/ktor/http/HttpHeaders;->TE:Ljava/lang/String;

    .line 93
    const-string v0, "Timeout"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Timeout:Ljava/lang/String;

    .line 94
    const-string v0, "Trailer"

    sput-object v0, Lio/ktor/http/HttpHeaders;->Trailer:Ljava/lang/String;

    .line 95
    const-string v0, "Transfer-Encoding"

    sput-object v0, Lio/ktor/http/HttpHeaders;->TransferEncoding:Ljava/lang/String;

    .line 96
    const-string v1, "Upgrade"

    sput-object v1, Lio/ktor/http/HttpHeaders;->Upgrade:Ljava/lang/String;

    .line 97
    const-string v2, "User-Agent"

    sput-object v2, Lio/ktor/http/HttpHeaders;->UserAgent:Ljava/lang/String;

    .line 98
    const-string v2, "Vary"

    sput-object v2, Lio/ktor/http/HttpHeaders;->Vary:Ljava/lang/String;

    .line 99
    const-string v2, "Via"

    sput-object v2, Lio/ktor/http/HttpHeaders;->Via:Ljava/lang/String;

    .line 100
    const-string v2, "Warning"

    sput-object v2, Lio/ktor/http/HttpHeaders;->Warning:Ljava/lang/String;

    .line 101
    const-string v2, "WWW-Authenticate"

    sput-object v2, Lio/ktor/http/HttpHeaders;->WWWAuthenticate:Ljava/lang/String;

    .line 104
    const-string v2, "Access-Control-Allow-Origin"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlAllowOrigin:Ljava/lang/String;

    .line 105
    const-string v2, "Access-Control-Allow-Methods"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlAllowMethods:Ljava/lang/String;

    .line 106
    const-string v2, "Access-Control-Allow-Credentials"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlAllowCredentials:Ljava/lang/String;

    .line 107
    const-string v2, "Access-Control-Allow-Headers"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlAllowHeaders:Ljava/lang/String;

    .line 109
    const-string v2, "Access-Control-Request-Method"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlRequestMethod:Ljava/lang/String;

    .line 110
    const-string v2, "Access-Control-Request-Headers"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlRequestHeaders:Ljava/lang/String;

    .line 111
    const-string v2, "Access-Control-Expose-Headers"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlExposeHeaders:Ljava/lang/String;

    .line 112
    const-string v2, "Access-Control-Max-Age"

    sput-object v2, Lio/ktor/http/HttpHeaders;->AccessControlMaxAge:Ljava/lang/String;

    .line 115
    const-string v2, "X-Http-Method-Override"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XHttpMethodOverride:Ljava/lang/String;

    .line 116
    const-string v2, "X-Forwarded-Host"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedHost:Ljava/lang/String;

    .line 117
    const-string v2, "X-Forwarded-Server"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedServer:Ljava/lang/String;

    .line 118
    const-string v2, "X-Forwarded-Proto"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedProto:Ljava/lang/String;

    .line 119
    const-string v2, "X-Forwarded-For"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedFor:Ljava/lang/String;

    .line 121
    const-string v2, "X-Forwarded-Port"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XForwardedPort:Ljava/lang/String;

    .line 123
    const-string v2, "X-Request-ID"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XRequestId:Ljava/lang/String;

    .line 124
    const-string v2, "X-Correlation-ID"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XCorrelationId:Ljava/lang/String;

    .line 125
    const-string v2, "X-Total-Count"

    sput-object v2, Lio/ktor/http/HttpHeaders;->XTotalCount:Ljava/lang/String;

    .line 127
    const-string v2, "Last-Event-ID"

    sput-object v2, Lio/ktor/http/HttpHeaders;->LastEventID:Ljava/lang/String;

    .line 136
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/ktor/http/HttpHeaders;->UnsafeHeadersArray:[Ljava/lang/String;

    .line 151
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/http/HttpHeaders;->UnsafeHeadersList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkHeaderName(Ljava/lang/String;)V
    .registers 6

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    move v0, p0

    .line 1189
    :goto_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p0, v1, :cond_2b

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-lez v3, :cond_25

    invoke-static {v1}, Lio/ktor/http/HttpHeadersKt;->access$isDelimiter(C)Z

    move-result v1

    if-nez v1, :cond_25

    add-int/lit8 p0, p0, 0x1

    move v0, v2

    goto :goto_7

    .line 161
    :cond_25
    new-instance p0, Lio/ktor/http/IllegalHeaderNameException;

    invoke-direct {p0, p1, v0}, Lio/ktor/http/IllegalHeaderNameException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2b
    return-void
.end method

.method public final checkHeaderValue(Ljava/lang/String;)V
    .registers 6

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    move v0, p0

    .line 1189
    :goto_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p0, v1, :cond_2a

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    .line 173
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gez v3, :cond_26

    const/16 v3, 0x9

    if-ne v1, v3, :cond_20

    goto :goto_26

    .line 174
    :cond_20
    new-instance p0, Lio/ktor/http/IllegalHeaderValueException;

    invoke-direct {p0, p1, v0}, Lio/ktor/http/IllegalHeaderValueException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_26
    :goto_26
    add-int/lit8 p0, p0, 0x1

    move v0, v2

    goto :goto_7

    :cond_2a
    return-void
.end method

.method public final getAccept()Ljava/lang/String;
    .registers 1

    .line 12
    sget-object p0, Lio/ktor/http/HttpHeaders;->Accept:Ljava/lang/String;

    return-object p0
.end method

.method public final getAcceptCharset()Ljava/lang/String;
    .registers 1

    .line 13
    sget-object p0, Lio/ktor/http/HttpHeaders;->AcceptCharset:Ljava/lang/String;

    return-object p0
.end method

.method public final getAuthorization()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object p0, Lio/ktor/http/HttpHeaders;->Authorization:Ljava/lang/String;

    return-object p0
.end method

.method public final getConnection()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object p0, Lio/ktor/http/HttpHeaders;->Connection:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentLength()Ljava/lang/String;
    .registers 1

    .line 29
    sget-object p0, Lio/ktor/http/HttpHeaders;->ContentLength:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object p0, Lio/ktor/http/HttpHeaders;->ContentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getCookie()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object p0, Lio/ktor/http/HttpHeaders;->Cookie:Ljava/lang/String;

    return-object p0
.end method

.method public final getDate()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object p0, Lio/ktor/http/HttpHeaders;->Date:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpect()Ljava/lang/String;
    .registers 1

    .line 45
    sget-object p0, Lio/ktor/http/HttpHeaders;->Expect:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpires()Ljava/lang/String;
    .registers 1

    .line 46
    sget-object p0, Lio/ktor/http/HttpHeaders;->Expires:Ljava/lang/String;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object p0, Lio/ktor/http/HttpHeaders;->Host:Ljava/lang/String;

    return-object p0
.end method

.method public final getIfModifiedSince()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object p0, Lio/ktor/http/HttpHeaders;->IfModifiedSince:Ljava/lang/String;

    return-object p0
.end method

.method public final getIfUnmodifiedSince()Ljava/lang/String;
    .registers 1

    .line 57
    sget-object p0, Lio/ktor/http/HttpHeaders;->IfUnmodifiedSince:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastModified()Ljava/lang/String;
    .registers 1

    .line 58
    sget-object p0, Lio/ktor/http/HttpHeaders;->LastModified:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocation()Ljava/lang/String;
    .registers 1

    .line 59
    sget-object p0, Lio/ktor/http/HttpHeaders;->Location:Ljava/lang/String;

    return-object p0
.end method

.method public final getProxyAuthenticate()Ljava/lang/String;
    .registers 1

    .line 71
    sget-object p0, Lio/ktor/http/HttpHeaders;->ProxyAuthenticate:Ljava/lang/String;

    return-object p0
.end method

.method public final getProxyAuthorization()Ljava/lang/String;
    .registers 1

    .line 73
    sget-object p0, Lio/ktor/http/HttpHeaders;->ProxyAuthorization:Ljava/lang/String;

    return-object p0
.end method

.method public final getRetryAfter()Ljava/lang/String;
    .registers 1

    .line 78
    sget-object p0, Lio/ktor/http/HttpHeaders;->RetryAfter:Ljava/lang/String;

    return-object p0
.end method

.method public final getSecWebSocketExtensions()Ljava/lang/String;
    .registers 1

    .line 82
    sget-object p0, Lio/ktor/http/HttpHeaders;->SecWebSocketExtensions:Ljava/lang/String;

    return-object p0
.end method

.method public final getSecWebSocketKey()Ljava/lang/String;
    .registers 1

    .line 83
    sget-object p0, Lio/ktor/http/HttpHeaders;->SecWebSocketKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getSecWebSocketVersion()Ljava/lang/String;
    .registers 1

    .line 85
    sget-object p0, Lio/ktor/http/HttpHeaders;->SecWebSocketVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getTransferEncoding()Ljava/lang/String;
    .registers 1

    .line 95
    sget-object p0, Lio/ktor/http/HttpHeaders;->TransferEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public final getUnsafeHeadersList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    sget-object p0, Lio/ktor/http/HttpHeaders;->UnsafeHeadersList:Ljava/util/List;

    return-object p0
.end method

.method public final getUpgrade()Ljava/lang/String;
    .registers 1

    .line 96
    sget-object p0, Lio/ktor/http/HttpHeaders;->Upgrade:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .registers 1

    .line 97
    sget-object p0, Lio/ktor/http/HttpHeaders;->UserAgent:Ljava/lang/String;

    return-object p0
.end method
