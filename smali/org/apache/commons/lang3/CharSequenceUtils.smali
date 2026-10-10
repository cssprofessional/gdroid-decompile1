###### Class org.apache.commons.lang3.CharSequenceUtils (org.apache.commons.lang3.CharSequenceUtils)
.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# direct methods
.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    if-eqz p0, :cond_3f

    if-nez p1, :cond_5

    goto :goto_3f

    .line 53
    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 54
    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 56
    :cond_14
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_23

    .line 57
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 59
    :cond_23
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_32

    .line 60
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 62
    :cond_32
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_3f
    :goto_3f
    const/4 p0, -0x1

    return p0
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .registers 13

    .line 297
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_17

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 298
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    .line 305
    :cond_17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    .line 306
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    const/4 v2, 0x0

    if-ltz p2, :cond_5f

    if-ltz p4, :cond_5f

    if-gez p5, :cond_29

    goto :goto_5f

    :cond_29
    if-lt v0, p5, :cond_5f

    if-ge v1, p5, :cond_2e

    goto :goto_5f

    :cond_2e
    :goto_2e
    add-int/lit8 v0, p5, -0x1

    if-lez p5, :cond_5d

    add-int/lit8 p5, p2, 0x1

    .line 319
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 v1, p4, 0x1

    .line 320
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-ne p2, p4, :cond_41

    goto :goto_59

    :cond_41
    if-nez p1, :cond_44

    return v2

    .line 331
    :cond_44
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    .line 332
    invoke-static {p4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p4

    if-eq p2, p4, :cond_59

    .line 333
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-static {p4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p4

    if-eq p2, p4, :cond_59

    return v2

    :cond_59
    :goto_59
    move p2, p5

    move p5, v0

    move p4, v1

    goto :goto_2e

    :cond_5d
    const/4 p0, 0x1

    return p0

    :cond_5f
    :goto_5f
    return v2
.end method
