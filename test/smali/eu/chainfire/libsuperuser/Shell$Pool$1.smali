.class final Leu/chainfire/libsuperuser/Shell$Pool$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell$Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2

    .line 3245
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Builder;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/Shell$Builder;-><init>()V

    .line 3246
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->setWantSTDERR(Z)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    .line 3247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->setWatchdogTimeout(I)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    .line 3248
    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->setMinimalLogging(Z)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    .line 3245
    return-object v0
.end method
