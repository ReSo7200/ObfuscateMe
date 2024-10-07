.class public Lorg/junit/internal/requests/ClassRequest;
.super Lorg/junit/internal/requests/MemoizingRequest;
.source "ClassRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;,
        Lorg/junit/internal/requests/ClassRequest$CustomAllDefaultPossibilitiesBuilder;
    }
.end annotation


# instance fields
.field private final canUseSuiteMethod:Z

.field private final fTestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/junit/internal/requests/ClassRequest;-><init>(Ljava/lang/Class;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "canUseSuiteMethod"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 17
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/internal/requests/MemoizingRequest;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/junit/internal/requests/ClassRequest;->fTestClass:Ljava/lang/Class;

    .line 19
    iput-boolean p2, p0, Lorg/junit/internal/requests/ClassRequest;->canUseSuiteMethod:Z

    .line 20
    return-void
.end method

.method static synthetic access$200(Lorg/junit/internal/requests/ClassRequest;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/requests/ClassRequest;

    .line 8
    iget-object v0, p0, Lorg/junit/internal/requests/ClassRequest;->fTestClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lorg/junit/internal/requests/ClassRequest;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/requests/ClassRequest;

    .line 8
    iget-boolean v0, p0, Lorg/junit/internal/requests/ClassRequest;->canUseSuiteMethod:Z

    return v0
.end method


# virtual methods
.method protected createRunner()Lorg/junit/runner/Runner;
    .locals 2

    .line 28
    new-instance v0, Lorg/junit/internal/requests/ClassRequest$CustomAllDefaultPossibilitiesBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/internal/requests/ClassRequest$CustomAllDefaultPossibilitiesBuilder;-><init>(Lorg/junit/internal/requests/ClassRequest;Lorg/junit/internal/requests/ClassRequest$1;)V

    iget-object v1, p0, Lorg/junit/internal/requests/ClassRequest;->fTestClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/junit/internal/requests/ClassRequest$CustomAllDefaultPossibilitiesBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    return-object v0
.end method
