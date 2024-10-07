.class Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;
.super Ljava/lang/Object;
.source "AndroidXTracer.java"

# interfaces
.implements Landroidx/test/platform/tracing/Tracer$Span;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/platform/tracing/AndroidXTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidXTracerSpan"
.end annotation


# instance fields
.field private final nestedSpans:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;->nestedSpans:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/platform/tracing/AndroidXTracer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/test/platform/tracing/AndroidXTracer$1;

    .line 79
    invoke-direct {p0}, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public beginChildSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Landroidx/test/platform/tracing/AndroidXTracer;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;

    invoke-direct {v0}, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;-><init>()V

    .line 88
    .local v0, "span":Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;
    iget-object v1, p0, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;->nestedSpans:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 89
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 95
    nop

    :goto_0
    iget-object v0, p0, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;->nestedSpans:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;

    move-object v1, v0

    .local v1, "span":Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v1}, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;->close()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 100
    return-void
.end method
