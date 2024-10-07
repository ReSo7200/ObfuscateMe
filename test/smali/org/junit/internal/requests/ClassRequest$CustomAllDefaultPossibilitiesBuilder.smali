.class Lorg/junit/internal/requests/ClassRequest$CustomAllDefaultPossibilitiesBuilder;
.super Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;
.source "ClassRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/requests/ClassRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAllDefaultPossibilitiesBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/internal/requests/ClassRequest;


# direct methods
.method private constructor <init>(Lorg/junit/internal/requests/ClassRequest;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/junit/internal/requests/ClassRequest$CustomAllDefaultPossibilitiesBuilder;->this$0:Lorg/junit/internal/requests/ClassRequest;

    invoke-direct {p0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/requests/ClassRequest;Lorg/junit/internal/requests/ClassRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/internal/requests/ClassRequest;
    .param p2, "x1"    # Lorg/junit/internal/requests/ClassRequest$1;

    .line 31
    invoke-direct {p0, p1}, Lorg/junit/internal/requests/ClassRequest$CustomAllDefaultPossibilitiesBuilder;-><init>(Lorg/junit/internal/requests/ClassRequest;)V

    return-void
.end method


# virtual methods
.method protected suiteMethodBuilder()Lorg/junit/runners/model/RunnerBuilder;
    .locals 3

    .line 35
    new-instance v0, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;

    iget-object v1, p0, Lorg/junit/internal/requests/ClassRequest$CustomAllDefaultPossibilitiesBuilder;->this$0:Lorg/junit/internal/requests/ClassRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;-><init>(Lorg/junit/internal/requests/ClassRequest;Lorg/junit/internal/requests/ClassRequest$1;)V

    return-object v0
.end method
