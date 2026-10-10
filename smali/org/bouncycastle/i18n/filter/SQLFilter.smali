###### Class org.bouncycastle.i18n.filter.SQLFilter (org.bouncycastle.i18n.filter.SQLFilter)
.class public Lorg/bouncycastle/i18n/filter/SQLFilter;
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

    if-ge p1, v0, :cond_69

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_61

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x22

    if-eq v0, v1, :cond_57

    const/16 v1, 0x27

    if-eq v0, v1, :cond_52

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_48

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_43

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_35

    goto :goto_66

    :cond_35
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\\\"

    :goto_39
    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v0

    goto :goto_66

    :cond_3e
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\="

    goto :goto_39

    :cond_43
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\;"

    goto :goto_39

    :cond_48
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\/"

    goto :goto_39

    :cond_4d
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\-"

    goto :goto_39

    :cond_52
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\\'"

    goto :goto_39

    :cond_57
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\\""

    goto :goto_39

    :cond_5c
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\r"

    goto :goto_39

    :cond_61
    add-int/lit8 v0, p1, 0x1

    const-string v1, "\\n"

    goto :goto_39

    :goto_66
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_69
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/SQLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
