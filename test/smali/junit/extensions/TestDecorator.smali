.class public Ljunit/extensions/TestDecorator;
.super Ljunit/framework/Assert;
.source "TestDecorator.java"

# interfaces
.implements Ljunit/framework/Test;


# instance fields
.field protected fTest:Ljunit/framework/Test;


# direct methods
.method public constructor <init>(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    .line 16
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    .line 17
    iput-object p1, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    .line 18
    return-void
.end method


# virtual methods
.method public basicRun(Ljunit/framework/TestResult;)V
    .locals 1
    .param p1, "result"    # Ljunit/framework/TestResult;

    .line 24
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    invoke-interface {v0, p1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 25
    return-void
.end method

.method public countTestCases()I
    .locals 1

    .line 28
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    invoke-interface {v0}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    return v0
.end method

.method public getTest()Ljunit/framework/Test;
    .locals 1

    .line 41
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "result"    # Ljunit/framework/TestResult;

    .line 32
    invoke-virtual {p0, p1}, Ljunit/extensions/TestDecorator;->basicRun(Ljunit/framework/TestResult;)V

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Ljunit/extensions/TestDecorator;->fTest:Ljunit/framework/Test;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
