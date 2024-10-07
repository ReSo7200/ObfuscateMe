.class Lorg/junit/runners/BlockJUnit4ClassRunner$2;
.super Lorg/junit/internal/runners/model/ReflectiveCallable;
.source "BlockJUnit4ClassRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runners/BlockJUnit4ClassRunner;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runners/BlockJUnit4ClassRunner;

.field final synthetic val$method:Lorg/junit/runners/model/FrameworkMethod;


# direct methods
.method constructor <init>(Lorg/junit/runners/BlockJUnit4ClassRunner;Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->this$0:Lorg/junit/runners/BlockJUnit4ClassRunner;

    iput-object p2, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-direct {p0}, Lorg/junit/internal/runners/model/ReflectiveCallable;-><init>()V

    return-void
.end method


# virtual methods
.method protected runReflectiveCall()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->this$0:Lorg/junit/runners/BlockJUnit4ClassRunner;

    iget-object v1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->createTest(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
