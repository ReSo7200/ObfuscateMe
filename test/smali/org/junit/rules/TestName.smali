.class public Lorg/junit/rules/TestName;
.super Lorg/junit/rules/TestWatcher;
.source "TestName.java"


# instance fields
.field private volatile name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/junit/rules/TestWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/junit/rules/TestName;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected starting(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "d"    # Lorg/junit/runner/Description;

    .line 32
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/rules/TestName;->name:Ljava/lang/String;

    .line 33
    return-void
.end method
