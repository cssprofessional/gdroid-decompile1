###### Class io.ktor.http.HttpStatusCode (io.ktor.http.HttpStatusCode)
.class public final Lio/ktor/http/HttpStatusCode;
.super Ljava/lang/Object;
.source "HttpStatusCode.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/HttpStatusCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/ktor/http/HttpStatusCode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpStatusCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpStatusCode.kt\nio/ktor/http/HttpStatusCode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,196:1\n1208#2,2:197\n1236#2,4:199\n*S KotlinDebug\n*F\n+ 1 HttpStatusCode.kt\nio/ktor/http/HttpStatusCode\n*L\n119#1:197,2\n119#1:199,4\n*E\n"
.end annotation


# static fields
.field public static final Accepted:Lio/ktor/http/HttpStatusCode;

.field public static final BadGateway:Lio/ktor/http/HttpStatusCode;

.field public static final BadRequest:Lio/ktor/http/HttpStatusCode;

.field public static final Companion:Lio/ktor/http/HttpStatusCode$Companion;

.field public static final Conflict:Lio/ktor/http/HttpStatusCode;

.field public static final Continue:Lio/ktor/http/HttpStatusCode;

.field public static final Created:Lio/ktor/http/HttpStatusCode;

.field public static final ExpectationFailed:Lio/ktor/http/HttpStatusCode;

.field public static final FailedDependency:Lio/ktor/http/HttpStatusCode;

.field public static final Forbidden:Lio/ktor/http/HttpStatusCode;

.field public static final Found:Lio/ktor/http/HttpStatusCode;

.field public static final GatewayTimeout:Lio/ktor/http/HttpStatusCode;

.field public static final Gone:Lio/ktor/http/HttpStatusCode;

.field public static final InsufficientStorage:Lio/ktor/http/HttpStatusCode;

.field public static final InternalServerError:Lio/ktor/http/HttpStatusCode;

.field public static final LengthRequired:Lio/ktor/http/HttpStatusCode;

.field public static final Locked:Lio/ktor/http/HttpStatusCode;

.field public static final MethodNotAllowed:Lio/ktor/http/HttpStatusCode;

.field public static final MovedPermanently:Lio/ktor/http/HttpStatusCode;

.field public static final MultiStatus:Lio/ktor/http/HttpStatusCode;

.field public static final MultipleChoices:Lio/ktor/http/HttpStatusCode;

.field public static final NoContent:Lio/ktor/http/HttpStatusCode;

.field public static final NonAuthoritativeInformation:Lio/ktor/http/HttpStatusCode;

.field public static final NotAcceptable:Lio/ktor/http/HttpStatusCode;

.field public static final NotFound:Lio/ktor/http/HttpStatusCode;

.field public static final NotImplemented:Lio/ktor/http/HttpStatusCode;

.field public static final NotModified:Lio/ktor/http/HttpStatusCode;

.field public static final OK:Lio/ktor/http/HttpStatusCode;

.field public static final PartialContent:Lio/ktor/http/HttpStatusCode;

.field public static final PayloadTooLarge:Lio/ktor/http/HttpStatusCode;

.field public static final PaymentRequired:Lio/ktor/http/HttpStatusCode;

.field public static final PermanentRedirect:Lio/ktor/http/HttpStatusCode;

.field public static final PreconditionFailed:Lio/ktor/http/HttpStatusCode;

.field public static final Processing:Lio/ktor/http/HttpStatusCode;

.field public static final ProxyAuthenticationRequired:Lio/ktor/http/HttpStatusCode;

.field public static final RequestHeaderFieldTooLarge:Lio/ktor/http/HttpStatusCode;

.field public static final RequestTimeout:Lio/ktor/http/HttpStatusCode;

.field public static final RequestURITooLong:Lio/ktor/http/HttpStatusCode;

.field public static final RequestedRangeNotSatisfiable:Lio/ktor/http/HttpStatusCode;

.field public static final ResetContent:Lio/ktor/http/HttpStatusCode;

.field public static final SeeOther:Lio/ktor/http/HttpStatusCode;

.field public static final ServiceUnavailable:Lio/ktor/http/HttpStatusCode;

.field public static final SwitchProxy:Lio/ktor/http/HttpStatusCode;

.field public static final SwitchingProtocols:Lio/ktor/http/HttpStatusCode;

.field public static final TemporaryRedirect:Lio/ktor/http/HttpStatusCode;

.field public static final TooEarly:Lio/ktor/http/HttpStatusCode;

.field public static final TooManyRequests:Lio/ktor/http/HttpStatusCode;

.field public static final Unauthorized:Lio/ktor/http/HttpStatusCode;

.field public static final UnprocessableEntity:Lio/ktor/http/HttpStatusCode;

.field public static final UnsupportedMediaType:Lio/ktor/http/HttpStatusCode;

.field public static final UpgradeRequired:Lio/ktor/http/HttpStatusCode;

.field public static final UseProxy:Lio/ktor/http/HttpStatusCode;

.field public static final VariantAlsoNegotiates:Lio/ktor/http/HttpStatusCode;

.field public static final VersionNotSupported:Lio/ktor/http/HttpStatusCode;

.field public static final allStatusCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/HttpStatusCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final statusCodesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/ktor/http/HttpStatusCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/ktor/http/HttpStatusCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/HttpStatusCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    .line 39
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x64

    const-string v2, "Continue"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Continue:Lio/ktor/http/HttpStatusCode;

    .line 40
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x65

    const-string v2, "Switching Protocols"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->SwitchingProtocols:Lio/ktor/http/HttpStatusCode;

    .line 41
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x66

    const-string v2, "Processing"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Processing:Lio/ktor/http/HttpStatusCode;

    .line 43
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0xc8

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->OK:Lio/ktor/http/HttpStatusCode;

    .line 44
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0xc9

    const-string v2, "Created"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Created:Lio/ktor/http/HttpStatusCode;

    .line 45
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0xca

    const-string v2, "Accepted"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Accepted:Lio/ktor/http/HttpStatusCode;

    .line 48
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0xcb

    const-string v2, "Non-Authoritative Information"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->NonAuthoritativeInformation:Lio/ktor/http/HttpStatusCode;

    .line 50
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0xcc

    const-string v2, "No Content"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->NoContent:Lio/ktor/http/HttpStatusCode;

    .line 51
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0xcd

    const-string v2, "Reset Content"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->ResetContent:Lio/ktor/http/HttpStatusCode;

    .line 52
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0xce

    const-string v2, "Partial Content"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->PartialContent:Lio/ktor/http/HttpStatusCode;

    .line 53
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0xcf

    const-string v2, "Multi-Status"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->MultiStatus:Lio/ktor/http/HttpStatusCode;

    .line 55
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x12c

    const-string v2, "Multiple Choices"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->MultipleChoices:Lio/ktor/http/HttpStatusCode;

    .line 56
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x12d

    const-string v2, "Moved Permanently"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->MovedPermanently:Lio/ktor/http/HttpStatusCode;

    .line 57
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x12e

    const-string v2, "Found"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Found:Lio/ktor/http/HttpStatusCode;

    .line 58
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x12f

    const-string v2, "See Other"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->SeeOther:Lio/ktor/http/HttpStatusCode;

    .line 59
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x130

    const-string v2, "Not Modified"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->NotModified:Lio/ktor/http/HttpStatusCode;

    .line 60
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x131

    const-string v2, "Use Proxy"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->UseProxy:Lio/ktor/http/HttpStatusCode;

    .line 61
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x132

    const-string v2, "Switch Proxy"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->SwitchProxy:Lio/ktor/http/HttpStatusCode;

    .line 62
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x133

    const-string v2, "Temporary Redirect"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->TemporaryRedirect:Lio/ktor/http/HttpStatusCode;

    .line 63
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x134

    const-string v2, "Permanent Redirect"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->PermanentRedirect:Lio/ktor/http/HttpStatusCode;

    .line 65
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x190

    const-string v2, "Bad Request"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->BadRequest:Lio/ktor/http/HttpStatusCode;

    .line 66
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Unauthorized:Lio/ktor/http/HttpStatusCode;

    .line 67
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x192

    const-string v2, "Payment Required"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->PaymentRequired:Lio/ktor/http/HttpStatusCode;

    .line 68
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x193

    const-string v2, "Forbidden"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Forbidden:Lio/ktor/http/HttpStatusCode;

    .line 69
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x194

    const-string v2, "Not Found"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->NotFound:Lio/ktor/http/HttpStatusCode;

    .line 70
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x195

    const-string v2, "Method Not Allowed"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->MethodNotAllowed:Lio/ktor/http/HttpStatusCode;

    .line 71
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x196

    const-string v2, "Not Acceptable"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->NotAcceptable:Lio/ktor/http/HttpStatusCode;

    .line 74
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x197

    const-string v2, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->ProxyAuthenticationRequired:Lio/ktor/http/HttpStatusCode;

    .line 76
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x198

    const-string v2, "Request Timeout"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->RequestTimeout:Lio/ktor/http/HttpStatusCode;

    .line 77
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x199

    const-string v2, "Conflict"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Conflict:Lio/ktor/http/HttpStatusCode;

    .line 78
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x19a

    const-string v2, "Gone"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Gone:Lio/ktor/http/HttpStatusCode;

    .line 79
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x19b

    const-string v2, "Length Required"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->LengthRequired:Lio/ktor/http/HttpStatusCode;

    .line 80
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x19c

    const-string v2, "Precondition Failed"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->PreconditionFailed:Lio/ktor/http/HttpStatusCode;

    .line 81
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x19d

    const-string v2, "Payload Too Large"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->PayloadTooLarge:Lio/ktor/http/HttpStatusCode;

    .line 82
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x19e

    const-string v2, "Request-URI Too Long"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->RequestURITooLong:Lio/ktor/http/HttpStatusCode;

    .line 84
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x19f

    const-string v2, "Unsupported Media Type"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->UnsupportedMediaType:Lio/ktor/http/HttpStatusCode;

    .line 87
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1a0

    const-string v2, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->RequestedRangeNotSatisfiable:Lio/ktor/http/HttpStatusCode;

    .line 89
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1a1

    const-string v2, "Expectation Failed"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->ExpectationFailed:Lio/ktor/http/HttpStatusCode;

    .line 90
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1a6

    const-string v2, "Unprocessable Entity"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->UnprocessableEntity:Lio/ktor/http/HttpStatusCode;

    .line 91
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1a7

    const-string v2, "Locked"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->Locked:Lio/ktor/http/HttpStatusCode;

    .line 92
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1a8

    const-string v2, "Failed Dependency"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->FailedDependency:Lio/ktor/http/HttpStatusCode;

    .line 93
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1a9

    const-string v2, "Too Early"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->TooEarly:Lio/ktor/http/HttpStatusCode;

    .line 94
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1aa

    const-string v2, "Upgrade Required"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->UpgradeRequired:Lio/ktor/http/HttpStatusCode;

    .line 95
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1ad

    const-string v2, "Too Many Requests"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->TooManyRequests:Lio/ktor/http/HttpStatusCode;

    .line 98
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1af

    const-string v2, "Request Header Fields Too Large"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->RequestHeaderFieldTooLarge:Lio/ktor/http/HttpStatusCode;

    .line 100
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1f4

    const-string v2, "Internal Server Error"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->InternalServerError:Lio/ktor/http/HttpStatusCode;

    .line 101
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1f5

    const-string v2, "Not Implemented"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->NotImplemented:Lio/ktor/http/HttpStatusCode;

    .line 102
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1f6

    const-string v2, "Bad Gateway"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->BadGateway:Lio/ktor/http/HttpStatusCode;

    .line 103
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1f7

    const-string v2, "Service Unavailable"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->ServiceUnavailable:Lio/ktor/http/HttpStatusCode;

    .line 104
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1f8

    const-string v2, "Gateway Timeout"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->GatewayTimeout:Lio/ktor/http/HttpStatusCode;

    .line 107
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1f9

    const-string v2, "HTTP Version Not Supported"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->VersionNotSupported:Lio/ktor/http/HttpStatusCode;

    .line 109
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1fa

    const-string v2, "Variant Also Negotiates"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->VariantAlsoNegotiates:Lio/ktor/http/HttpStatusCode;

    .line 110
    new-instance v0, Lio/ktor/http/HttpStatusCode;

    const/16 v1, 0x1fb

    const-string v2, "Insufficient Storage"

    invoke-direct {v0, v1, v2}, Lio/ktor/http/HttpStatusCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/HttpStatusCode;->InsufficientStorage:Lio/ktor/http/HttpStatusCode;

    .line 117
    invoke-static {}, Lio/ktor/http/HttpStatusCodeKt;->allStatusCodes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/http/HttpStatusCode;->allStatusCodes:Ljava/util/List;

    const/16 v1, 0xa

    .line 1208
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1209
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_285

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    move-object v3, v1

    check-cast v3, Lio/ktor/http/HttpStatusCode;

    .line 119
    iget v3, v3, Lio/ktor/http/HttpStatusCode;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1237
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26e

    .line 119
    :cond_285
    sput-object v2, Lio/ktor/http/HttpStatusCode;->statusCodesMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lio/ktor/http/HttpStatusCode;->value:I

    iput-object p2, p0, Lio/ktor/http/HttpStatusCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAccepted$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Accepted:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getBadGateway$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->BadGateway:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getBadRequest$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->BadRequest:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getConflict$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Conflict:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getContinue$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Continue:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getCreated$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Created:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getExpectationFailed$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->ExpectationFailed:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getFailedDependency$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->FailedDependency:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getForbidden$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Forbidden:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getFound$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Found:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getGatewayTimeout$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->GatewayTimeout:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getGone$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Gone:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getInsufficientStorage$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->InsufficientStorage:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getInternalServerError$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->InternalServerError:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getLengthRequired$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->LengthRequired:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getLocked$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Locked:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getMethodNotAllowed$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->MethodNotAllowed:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getMovedPermanently$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->MovedPermanently:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getMultiStatus$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->MultiStatus:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getMultipleChoices$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->MultipleChoices:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getNoContent$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->NoContent:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getNonAuthoritativeInformation$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->NonAuthoritativeInformation:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getNotAcceptable$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->NotAcceptable:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getNotFound$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->NotFound:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getNotImplemented$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->NotImplemented:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getNotModified$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->NotModified:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getOK$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->OK:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getPartialContent$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->PartialContent:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getPayloadTooLarge$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->PayloadTooLarge:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getPaymentRequired$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->PaymentRequired:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getPermanentRedirect$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->PermanentRedirect:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getPreconditionFailed$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->PreconditionFailed:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getProcessing$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Processing:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getProxyAuthenticationRequired$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->ProxyAuthenticationRequired:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getRequestHeaderFieldTooLarge$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->RequestHeaderFieldTooLarge:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getRequestTimeout$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->RequestTimeout:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getRequestURITooLong$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->RequestURITooLong:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getRequestedRangeNotSatisfiable$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->RequestedRangeNotSatisfiable:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getResetContent$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->ResetContent:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getSeeOther$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->SeeOther:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getServiceUnavailable$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->ServiceUnavailable:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getSwitchProxy$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->SwitchProxy:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getSwitchingProtocols$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->SwitchingProtocols:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getTemporaryRedirect$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->TemporaryRedirect:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getTooEarly$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->TooEarly:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getTooManyRequests$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->TooManyRequests:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getUnauthorized$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Unauthorized:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getUnprocessableEntity$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->UnprocessableEntity:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getUnsupportedMediaType$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->UnsupportedMediaType:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getUpgradeRequired$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->UpgradeRequired:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getUseProxy$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->UseProxy:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getVariantAlsoNegotiates$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->VariantAlsoNegotiates:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public static final synthetic access$getVersionNotSupported$cp()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/http/HttpStatusCode;->VersionNotSupported:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lio/ktor/http/HttpStatusCode;)I
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget p0, p0, Lio/ktor/http/HttpStatusCode;->value:I

    iget p1, p1, Lio/ktor/http/HttpStatusCode;->value:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 15
    check-cast p1, Lio/ktor/http/HttpStatusCode;

    invoke-virtual {p0, p1}, Lio/ktor/http/HttpStatusCode;->compareTo(Lio/ktor/http/HttpStatusCode;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 19
    instance-of v0, p1, Lio/ktor/http/HttpStatusCode;

    if-eqz v0, :cond_e

    check-cast p1, Lio/ktor/http/HttpStatusCode;

    iget p1, p1, Lio/ktor/http/HttpStatusCode;->value:I

    iget p0, p0, Lio/ktor/http/HttpStatusCode;->value:I

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final getValue()I
    .registers 1

    .line 16
    iget p0, p0, Lio/ktor/http/HttpStatusCode;->value:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 21
    iget p0, p0, Lio/ktor/http/HttpStatusCode;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lio/ktor/http/HttpStatusCode;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/http/HttpStatusCode;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.http.HttpStatusCode.Companion (io.ktor.http.HttpStatusCode$Companion)
.class public final Lio/ktor/http/HttpStatusCode$Companion;
.super Ljava/lang/Object;
.source "HttpStatusCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/HttpStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/http/HttpStatusCode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccepted()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 45
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getAccepted$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getBadGateway()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 102
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getBadGateway$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getBadRequest()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 65
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getBadRequest$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getConflict()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 77
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getConflict$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getContinue()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 39
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getContinue$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getCreated()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 44
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getCreated$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getExpectationFailed()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 89
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getExpectationFailed$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getFailedDependency()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 92
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getFailedDependency$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getForbidden()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 68
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getForbidden$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getFound()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 57
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getFound$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getGatewayTimeout()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 104
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getGatewayTimeout$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getGone()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 78
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getGone$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getInsufficientStorage()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 110
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getInsufficientStorage$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getInternalServerError()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 100
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getInternalServerError$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getLengthRequired()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 79
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getLengthRequired$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getLocked()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 91
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getLocked$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getMethodNotAllowed()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 70
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getMethodNotAllowed$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getMovedPermanently()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 56
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getMovedPermanently$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getMultiStatus()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 53
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getMultiStatus$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getMultipleChoices()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 55
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getMultipleChoices$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getNoContent()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 50
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getNoContent$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getNonAuthoritativeInformation()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 47
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getNonAuthoritativeInformation$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getNotAcceptable()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 71
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getNotAcceptable$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getNotFound()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 69
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getNotFound$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getNotImplemented()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 101
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getNotImplemented$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getNotModified()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 59
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getNotModified$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getOK()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 43
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getOK$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getPartialContent()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 52
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getPartialContent$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getPayloadTooLarge()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 81
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getPayloadTooLarge$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getPaymentRequired()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 67
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getPaymentRequired$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getPermanentRedirect()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 63
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getPermanentRedirect$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getPreconditionFailed()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 80
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getPreconditionFailed$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getProcessing()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 41
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getProcessing$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getProxyAuthenticationRequired()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 73
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getProxyAuthenticationRequired$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getRequestHeaderFieldTooLarge()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 97
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getRequestHeaderFieldTooLarge$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getRequestTimeout()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 76
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getRequestTimeout$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getRequestURITooLong()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 82
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getRequestURITooLong$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getRequestedRangeNotSatisfiable()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 86
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getRequestedRangeNotSatisfiable$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getResetContent()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 51
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getResetContent$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getSeeOther()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 58
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getSeeOther$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceUnavailable()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 103
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getServiceUnavailable$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchProxy()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 61
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getSwitchProxy$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchingProtocols()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 40
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getSwitchingProtocols$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getTemporaryRedirect()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 62
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getTemporaryRedirect$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getTooEarly()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 93
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getTooEarly$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getTooManyRequests()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 95
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getTooManyRequests$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getUnauthorized()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 66
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getUnauthorized$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getUnprocessableEntity()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 90
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getUnprocessableEntity$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getUnsupportedMediaType()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 84
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getUnsupportedMediaType$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getUpgradeRequired()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 94
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getUpgradeRequired$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getUseProxy()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 60
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getUseProxy$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getVariantAlsoNegotiates()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 109
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getVariantAlsoNegotiates$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public final getVersionNotSupported()Lio/ktor/http/HttpStatusCode;
    .registers 1

    .line 106
    invoke-static {}, Lio/ktor/http/HttpStatusCode;->access$getVersionNotSupported$cp()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    return-object p0
.end method
