###### Class org.bouncycastle.i18n.filter.HTMLFilter (org.bouncycastle.i18n.filter.HTMLFilter)
.class public Lorg/bouncycastle/i18n/filter/HTMLFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge p1, v0, :cond_74

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x23

    if-eq v0, v1, :cond_67

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_62

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_58

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_53

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_4e

    packed-switch v0, :pswitch_data_7a

    add-int/lit8 p1, p1, -0x3

    goto :goto_71

    :pswitch_32
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#41"

    :goto_36
    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_71

    :pswitch_3a
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#40"

    goto :goto_36

    :pswitch_3f
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#39"

    goto :goto_36

    :pswitch_44
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#38"

    goto :goto_36

    :pswitch_49
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#37"

    goto :goto_36

    :cond_4e
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#60"

    goto :goto_36

    :cond_53
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#59"

    goto :goto_36

    :cond_58
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#62"

    goto :goto_36

    :cond_5d
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#45"

    goto :goto_36

    :cond_62
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#43"

    goto :goto_36

    :cond_67
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#35"

    goto :goto_36

    :cond_6c
    add-int/lit8 v0, p1, 0x1

    const-string v1, "&#34"

    goto :goto_36

    :goto_71
    add-int/lit8 p1, p1, 0x4

    goto :goto_6

    :cond_74
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_7a
    .packed-switch 0x25
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_32
    .end packed-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/HTMLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
