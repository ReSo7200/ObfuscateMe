.class Lorg/junit/runner/Computer$2;
.super Lorg/junit/runners/Suite;
.source "Computer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runner/Computer;->getSuite(Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)Lorg/junit/runner/Runner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runner/Computer;


# direct methods
.method constructor <init>(Lorg/junit/runner/Computer;Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)V
    .locals 0
    .param p2, "x0"    # Lorg/junit/runners/model/RunnerBuilder;

    .line 33
    .local p3, "x1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/junit/runner/Computer$2;->this$0:Lorg/junit/runner/Computer;

    invoke-direct {p0, p2, p3}, Lorg/junit/runners/Suite;-><init>(Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "classes"

    return-object v0
.end method
