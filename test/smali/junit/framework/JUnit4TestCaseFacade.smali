.class public Ljunit/framework/JUnit4TestCaseFacade;
.super Ljava/lang/Object;
.source "JUnit4TestCaseFacade.java"

# interfaces
.implements Ljunit/framework/Test;
.implements Lorg/junit/runner/Describable;


# instance fields
.field private final fDescription:Lorg/junit/runner/Description;


# direct methods
.method constructor <init>(Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Ljunit/framework/JUnit4TestCaseFacade;->fDescription:Lorg/junit/runner/Description;

    .line 11
    return-void
.end method


# virtual methods
.method public countTestCases()I
    .locals 1

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 28
    iget-object v0, p0, Ljunit/framework/JUnit4TestCaseFacade;->fDescription:Lorg/junit/runner/Description;

    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This test stub created only for informational purposes."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-virtual {p0}, Ljunit/framework/JUnit4TestCaseFacade;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
