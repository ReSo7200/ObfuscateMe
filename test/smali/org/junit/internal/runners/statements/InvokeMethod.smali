.class public Lorg/junit/internal/runners/statements/InvokeMethod;
.super Lorg/junit/runners/model/Statement;
.source "InvokeMethod.java"


# instance fields
.field private final target:Ljava/lang/Object;

.field private final testMethod:Lorg/junit/runners/model/FrameworkMethod;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)V
    .locals 0
    .param p1, "testMethod"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "target"    # Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/junit/internal/runners/statements/InvokeMethod;->testMethod:Lorg/junit/runners/model/FrameworkMethod;

    .line 12
    iput-object p2, p0, Lorg/junit/internal/runners/statements/InvokeMethod;->target:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/junit/internal/runners/statements/InvokeMethod;->testMethod:Lorg/junit/runners/model/FrameworkMethod;

    iget-object v1, p0, Lorg/junit/internal/runners/statements/InvokeMethod;->target:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method
