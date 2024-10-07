.class public final synthetic Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/chacha/igexperiments/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/chacha/igexperiments/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/chacha/igexperiments/MainActivity;

    iput-object p2, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/chacha/igexperiments/MainActivity;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chacha/igexperiments/MainActivity;->lambda$checkForUpdate$7$com-chacha-igexperiments-MainActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
