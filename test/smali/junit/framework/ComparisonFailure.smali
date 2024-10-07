.class public Ljunit/framework/ComparisonFailure;
.super Ljunit/framework/AssertionFailedError;
.source "ComparisonFailure.java"


# static fields
.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fActual:Ljava/lang/String;

.field private fExpected:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getActual()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    return-object v0
.end method

.method public getExpected()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 36
    new-instance v0, Ljunit/framework/ComparisonCompactor;

    iget-object v1, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    iget-object v2, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v0, v3, v1, v2}, Ljunit/framework/ComparisonCompactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Ljunit/framework/AssertionFailedError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/ComparisonCompactor;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
