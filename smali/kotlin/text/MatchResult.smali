###### Class kotlin.text.MatchResult (kotlin.text.MatchResult)
.class public interface abstract Lkotlin/text/MatchResult;
.super Ljava/lang/Object;
.source "MatchResult.kt"


# virtual methods
.method public abstract getGroupValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroups()Lkotlin/text/MatchGroupCollection;
.end method

.method public abstract getRange()Lkotlin/ranges/IntRange;
.end method
