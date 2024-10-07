.class public final enum Landroidx/test/platform/concurrent/DirectExecutor;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/platform/concurrent/DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/platform/concurrent/DirectExecutor;

.field public static final enum INSTANCE:Landroidx/test/platform/concurrent/DirectExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Landroidx/test/platform/concurrent/DirectExecutor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/platform/concurrent/DirectExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/platform/concurrent/DirectExecutor;->INSTANCE:Landroidx/test/platform/concurrent/DirectExecutor;

    .line 30
    sget-object v0, Landroidx/test/platform/concurrent/DirectExecutor;->INSTANCE:Landroidx/test/platform/concurrent/DirectExecutor;

    filled-new-array {v0}, [Landroidx/test/platform/concurrent/DirectExecutor;

    move-result-object v0

    sput-object v0, Landroidx/test/platform/concurrent/DirectExecutor;->$VALUES:[Landroidx/test/platform/concurrent/DirectExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/platform/concurrent/DirectExecutor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 30
    const-class v0, Landroidx/test/platform/concurrent/DirectExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/platform/concurrent/DirectExecutor;

    return-object v0
.end method

.method public static values()[Landroidx/test/platform/concurrent/DirectExecutor;
    .locals 1

    .line 30
    sget-object v0, Landroidx/test/platform/concurrent/DirectExecutor;->$VALUES:[Landroidx/test/platform/concurrent/DirectExecutor;

    invoke-virtual {v0}, [Landroidx/test/platform/concurrent/DirectExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/platform/concurrent/DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "DirectExecutor"

    return-object v0
.end method
