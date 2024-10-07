.class public final synthetic Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/chacha/igexperiments/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/chacha/igexperiments/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/chacha/igexperiments/MainActivity;

    iput-object p2, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/chacha/igexperiments/MainActivity;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/chacha/igexperiments/MainActivity;->lambda$showUpdateDialog$9$com-chacha-igexperiments-MainActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
