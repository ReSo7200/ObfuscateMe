.class public Ljunit/framework/TestFailure;
.super Ljava/lang/Object;
.source "TestFailure.java"


# instance fields
.field protected fFailedTest:Ljunit/framework/Test;

.field protected fThrownException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "failedTest"    # Ljunit/framework/Test;
    .param p2, "thrownException"    # Ljava/lang/Throwable;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    .line 21
    iput-object p2, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    .line 22
    return-void
.end method


# virtual methods
.method public exceptionMessage()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public failedTest()Ljunit/framework/Test;
    .locals 1

    .line 28
    iget-object v0, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    return-object v0
.end method

.method public isFailure()Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljunit/framework/AssertionFailedError;

    return v0
.end method

.method public thrownException()Ljava/lang/Throwable;
    .locals 1

    .line 35
    iget-object v0, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/Throwables;->getStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
