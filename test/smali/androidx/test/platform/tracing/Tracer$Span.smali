.class public interface abstract Landroidx/test/platform/tracing/Tracer$Span;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/platform/tracing/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Span"
.end annotation


# virtual methods
.method public abstract beginChildSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract close()V
.end method
