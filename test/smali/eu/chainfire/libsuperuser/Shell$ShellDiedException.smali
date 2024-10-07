.class public Leu/chainfire/libsuperuser/Shell$ShellDiedException;
.super Ljava/lang/Exception;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShellDiedException"
.end annotation


# static fields
.field public static final EXCEPTION_SHELL_DIED:Ljava/lang/String; = "Shell died (or access was not granted)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    const-string v0, "Shell died (or access was not granted)"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    return-void
.end method
