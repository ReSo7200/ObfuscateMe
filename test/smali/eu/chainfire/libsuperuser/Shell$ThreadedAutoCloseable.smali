.class public Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;
.super Leu/chainfire/libsuperuser/Shell$Threaded;
.source "Shell.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadedAutoCloseable"
.end annotation


# direct methods
.method protected constructor <init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)V
    .locals 0
    .param p1, "builder"    # Leu/chainfire/libsuperuser/Shell$Builder;
    .param p2, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;
    .param p3, "pooled"    # Z

    .line 2953
    invoke-direct {p0, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Threaded;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)V

    .line 2954
    return-void
.end method
