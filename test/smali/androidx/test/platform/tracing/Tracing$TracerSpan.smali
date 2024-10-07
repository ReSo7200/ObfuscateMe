.class Landroidx/test/platform/tracing/Tracing$TracerSpan;
.super Ljava/lang/Object;
.source "Tracing.java"

# interfaces
.implements Landroidx/test/platform/tracing/Tracer$Span;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/platform/tracing/Tracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TracerSpan"
.end annotation


# instance fields
.field private final spans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/test/platform/tracing/Tracer;",
            "Landroidx/test/platform/tracing/Tracer$Span;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/test/platform/tracing/Tracing;


# direct methods
.method private constructor <init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/platform/tracing/Tracing;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "spans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/test/platform/tracing/Tracer;",
            "Landroidx/test/platform/tracing/Tracer$Span;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p2, "spans":Ljava/util/Map;, "Ljava/util/Map<Landroidx/test/platform/tracing/Tracer;Landroidx/test/platform/tracing/Tracer$Span;>;"
    iput-object p1, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->spans:Ljava/util/Map;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;Landroidx/test/platform/tracing/Tracing$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/test/platform/tracing/Tracing;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Landroidx/test/platform/tracing/Tracing$1;

    .line 125
    invoke-direct {p0, p1, p2}, Landroidx/test/platform/tracing/Tracing$TracerSpan;-><init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public beginChildSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    invoke-static {v0}, Landroidx/test/platform/tracing/Tracing;->access$100(Landroidx/test/platform/tracing/Tracing;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 142
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    invoke-static {v2}, Landroidx/test/platform/tracing/Tracing;->access$100(Landroidx/test/platform/tracing/Tracing;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    .local v1, "childSpans":Ljava/util/Map;, "Ljava/util/Map<Landroidx/test/platform/tracing/Tracer;Landroidx/test/platform/tracing/Tracer$Span;>;"
    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    invoke-static {v2}, Landroidx/test/platform/tracing/Tracing;->access$100(Landroidx/test/platform/tracing/Tracing;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/platform/tracing/Tracer;

    .line 144
    .local v3, "tracer":Landroidx/test/platform/tracing/Tracer;
    iget-object v4, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->spans:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/platform/tracing/Tracer$Span;

    .line 145
    .local v4, "parentSpan":Landroidx/test/platform/tracing/Tracer$Span;
    if-eqz v4, :cond_0

    .line 146
    invoke-static {v4, p1}, Landroidx/test/platform/tracing/Tracing;->access$200(Landroidx/test/platform/tracing/Tracer$Span;Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v3    # "tracer":Landroidx/test/platform/tracing/Tracer;
    .end local v4    # "parentSpan":Landroidx/test/platform/tracing/Tracer$Span;
    :cond_0
    goto :goto_0

    .line 149
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    new-instance v0, Landroidx/test/platform/tracing/Tracing$TracerSpan;

    iget-object v2, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->this$0:Landroidx/test/platform/tracing/Tracing;

    invoke-direct {v0, v2, v1}, Landroidx/test/platform/tracing/Tracing$TracerSpan;-><init>(Landroidx/test/platform/tracing/Tracing;Ljava/util/Map;)V

    return-object v0

    .line 149
    .end local v1    # "childSpans":Ljava/util/Map;, "Ljava/util/Map<Landroidx/test/platform/tracing/Tracer;Landroidx/test/platform/tracing/Tracer$Span;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/test/platform/tracing/Tracing$TracerSpan;->spans:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/platform/tracing/Tracer$Span;

    .line 158
    .local v1, "span":Landroidx/test/platform/tracing/Tracer$Span;
    invoke-interface {v1}, Landroidx/test/platform/tracing/Tracer$Span;->close()V

    .line 159
    .end local v1    # "span":Landroidx/test/platform/tracing/Tracer$Span;
    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method
