.class Leu/chainfire/libsuperuser/Shell$Interactive$11;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$exitCode:[I

.field final synthetic val$onSyncCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;[I)V
    .locals 0
    .param p1, "this$0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2648
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$11;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$11;->val$onSyncCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$11;->val$exitCode:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(II)V
    .locals 2
    .param p1, "commandCode"    # I
    .param p2, "intExitCode"    # I

    .line 2661
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$11;->val$exitCode:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 2662
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 2656
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$11;->val$onSyncCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;

    invoke-interface {v0, p1}, Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;->onInputStream(Ljava/io/InputStream;)V

    .line 2657
    return-void
.end method

.method public onSTDERR(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 2651
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$11;->val$onSyncCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;

    invoke-interface {v0, p1}, Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;->onSTDERR(Ljava/lang/String;)V

    .line 2652
    return-void
.end method
