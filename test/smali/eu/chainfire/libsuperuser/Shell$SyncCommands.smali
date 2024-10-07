.class public interface abstract Leu/chainfire/libsuperuser/Shell$SyncCommands;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncCommands"
.end annotation


# virtual methods
.method public abstract run(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation
.end method

.method public abstract run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation
.end method

.method public abstract run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation
.end method

.method public abstract run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation
.end method
