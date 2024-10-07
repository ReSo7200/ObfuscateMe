.class public final synthetic Landroidx/test/internal/util/LogUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/test/internal/util/LogUtil$Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/internal/util/LogUtil$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/test/internal/util/LogUtil$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0}, Landroidx/test/internal/util/LogUtil;->lambda$logDebug$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
