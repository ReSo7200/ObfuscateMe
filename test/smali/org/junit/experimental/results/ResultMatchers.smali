.class public Lorg/junit/experimental/results/ResultMatchers;
.super Ljava/lang/Object;
.source "ResultMatchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static failureCountIs(I)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Lorg/junit/experimental/results/PrintableResult;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/junit/experimental/results/ResultMatchers$1;

    invoke-direct {v0, p0}, Lorg/junit/experimental/results/ResultMatchers$1;-><init>(I)V

    return-object v0
.end method

.method public static hasFailureContaining(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Lorg/junit/experimental/results/PrintableResult;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/junit/experimental/results/ResultMatchers$4;

    invoke-direct {v0, p0}, Lorg/junit/experimental/results/ResultMatchers$4;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasSingleFailureContaining(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/junit/experimental/results/ResultMatchers$2;

    invoke-direct {v0, p0}, Lorg/junit/experimental/results/ResultMatchers$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasSingleFailureMatching(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Lorg/junit/experimental/results/PrintableResult;",
            ">;"
        }
    .end annotation

    .line 70
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Throwable;>;"
    new-instance v0, Lorg/junit/experimental/results/ResultMatchers$3;

    invoke-direct {v0, p0}, Lorg/junit/experimental/results/ResultMatchers$3;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static isSuccessful()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Lorg/junit/experimental/results/PrintableResult;",
            ">;"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/junit/experimental/results/ResultMatchers;->failureCountIs(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method
