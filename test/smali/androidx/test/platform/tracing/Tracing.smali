.class public final Landroidx/test/platform/tracing/Tracing;
.super Ljava/lang/Object;
.source "Tracing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/platform/tracing/Tracing$TracerSpan;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final singleton:Landroidx/test/platform/tracing/Tracing;


# instance fields
.field private final tracers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/platform/tracing/Tracer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Landroidx/test/platform/tracing/Tracing;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/platform/tracing/Tracing;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroidx/test/platform/tracing/Tracing;

    invoke-direct {v0}, Landroidx/test/platform/tracing/Tracing;-><init>()V

    sput-object v0, Landroidx/test/platform/tracing/Tracing;->singleton:Landroidx/test/platform/tracing/Tracing;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    .line 53
    new-instance v0, Landroidx/test/platform/tracing/AndroidXTracer;

    invoke-direct {v0}, Landroidx/test/platform/tracing/AndroidXTracer;-><init>()V

    invoke-virtual {v0}, Landroidx/test/platform/tracing/AndroidXTracer;->enableTracing()Landroidx/test/platform/tracing/AndroidXTracer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/platform/tracing/Tracing;->registerTracer(Landroidx/test/platform/tracing/Tracer;)V

    .line 54
    return-void
.end method

.method static synthetic access$100(Landroidx/test/platform/tracing/Tracing;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/test/platform/tracing/Tracing;

    .line 47
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/test/platform/tracing/Tracer$Span;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 1
    .param p0, "x0"    # Landroidx/test/platform/tracing/Tracer$Span;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-static {p0, p1}, Landroidx/test/platform/tracing/Tracing;->createUnmanagedChildSpan(Landroidx/test/platform/tracing/Tracer$Span;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    move-result-object v0

    return-object v0
.end method

.method private static createUnmanagedChildSpan(Landroidx/test/platform/tracing/Tracer$Span;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 1
    .param p0, "parentSpan"    # Landroidx/test/platform/tracing/Tracer$Span;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentSpan",
            "name"
        }
    .end annotation

    .line 178
    invoke-interface {p0, p1}, Landroidx/test/platform/tracing/Tracer$Span;->beginChildSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    move-result-object v0

    return-object v0
.end method

.method private static createUnmanagedSpan(Landroidx/test/platform/tracing/Tracer;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 1
    .param p0, "tracer"    # Landroidx/test/platform/tracing/Tracer;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tracer",
            "name"
        }
    .end annotation

    .line 169
    invoke-interface {p0, p1}, Landroidx/test/platform/tracing/Tracer;->beginSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroidx/test/platform/tracing/Tracing;
    .locals 1

    .line 62
    sget-object v0, Landroidx/test/platform/tracing/Tracing;->singleton:Landroidx/test/platform/tracing/Tracing;

    return-object v0
.end method


# virtual methods
.method public beginSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    monitor-enter v0

    .line 109
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 110
    .local v1, "spans":Ljava/util/Map;, "Ljava/util/Map<Landroidx/test/platform/tracing/Tracer;Landroidx/test/platform/tracing/Tracer$Span;>;"
    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/platform/tracing/Tracer;

    .line 111
    .local v3, "tracer":Landroidx/test/platform/tracing/Tracer;
    invoke-static {v3, p1}, Landroidx/test/platform/tracing/Tracing;->createUnmanagedSpan(Landroidx/test/platform/tracing/Tracer;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    nop

    .end local v3    # "tracer":Landroidx/test/platform/tracing/Tracer;
    goto :goto_0

    .line 113
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    new-instance v0, Landroidx/test/platform/tracing/Tracing$TracerSpan;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/test/platform/tracing/Tracing$TracerSpan;-><init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;Landroidx/test/platform/tracing/Tracing$1;)V

    return-object v0

    .line 113
    .end local v1    # "spans":Ljava/util/Map;, "Ljava/util/Map<Landroidx/test/platform/tracing/Tracer;Landroidx/test/platform/tracing/Tracer$Span;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerTracer(Landroidx/test/platform/tracing/Tracer;)V
    .locals 3
    .param p1, "tracer"    # Landroidx/test/platform/tracing/Tracer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracer"
        }
    .end annotation

    .line 74
    const-string v0, "Tracer cannot be null."

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroidx/test/platform/tracing/Tracing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracer already present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Landroidx/test/platform/tracing/Tracing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracer added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_0
    return-void
.end method

.method public unregisterTracer(Landroidx/test/platform/tracing/Tracer;)V
    .locals 3
    .param p1, "tracer"    # Landroidx/test/platform/tracing/Tracer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracer"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing;->tracers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Landroidx/test/platform/tracing/Tracing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracer removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
