.class final Lkotlinx/coroutines/selects/OnTimeout;
.super Ljava/lang/Object;
.source "OnTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,66:1\n17#2:67\n*S KotlinDebug\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n56#1:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0002R\u0017\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/OnTimeout;",
        "",
        "timeMillis",
        "",
        "(J)V",
        "selectClause",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "getSelectClause$annotations",
        "()V",
        "getSelectClause",
        "()Lkotlinx/coroutines/selects/SelectClause0;",
        "register",
        "",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "ignoredParam",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final timeMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "timeMillis"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lkotlinx/coroutines/selects/OnTimeout;->timeMillis:J

    .line 38
    return-void
.end method

.method public static final synthetic access$register(Lkotlinx/coroutines/selects/OnTimeout;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/selects/OnTimeout;
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/selects/OnTimeout;->register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic getSelectClause$annotations()V
    .locals 0

    return-void
.end method

.method private final register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 5
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 51
    iget-wide v0, p0, Lkotlinx/coroutines/selects/OnTimeout;->timeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 52
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 53
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 67
    .local v0, "$i$f$Runnable":I
    new-instance v1, Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;

    invoke-direct {v1, p1, p0}, Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/selects/SelectInstance;Lkotlinx/coroutines/selects/OnTimeout;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 56
    .end local v0    # "$i$f$Runnable":I
    move-object v0, v1

    .line 59
    .local v0, "action":Ljava/lang/Runnable;
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 60
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 61
    .local v1, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v1}, Lkotlinx/coroutines/DelayKt;->getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    move-result-object v2

    iget-wide v3, p0, Lkotlinx/coroutines/selects/OnTimeout;->timeMillis:J

    invoke-interface {v2, v3, v4, v0, v1}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    .line 63
    .local v2, "disposableHandle":Lkotlinx/coroutines/DisposableHandle;
    invoke-interface {p1, v2}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final getSelectClause()Lkotlinx/coroutines/selects/SelectClause0;
    .locals 7

    .line 43
    new-instance v6, Lkotlinx/coroutines/selects/SelectClause0Impl;

    .line 44
    nop

    .line 45
    sget-object v0, Lkotlinx/coroutines/selects/OnTimeout$selectClause$1;->INSTANCE:Lkotlinx/coroutines/selects/OnTimeout$selectClause$1;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 43
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/selects/SelectClause0Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lkotlinx/coroutines/selects/SelectClause0;

    .line 46
    return-object v6
.end method
