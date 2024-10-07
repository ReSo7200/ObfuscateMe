.class Lorg/junit/rules/Stopwatch$InternalWatcher;
.super Lorg/junit/rules/TestWatcher;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/rules/Stopwatch;


# direct methods
.method private constructor <init>(Lorg/junit/rules/Stopwatch;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-direct {p0}, Lorg/junit/rules/TestWatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/rules/Stopwatch;Lorg/junit/rules/Stopwatch$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/rules/Stopwatch;
    .param p2, "x1"    # Lorg/junit/rules/Stopwatch$1;

    .line 151
    invoke-direct {p0, p1}, Lorg/junit/rules/Stopwatch$InternalWatcher;-><init>(Lorg/junit/rules/Stopwatch;)V

    return-void
.end method


# virtual methods
.method protected failed(Ljava/lang/Throwable;Lorg/junit/runner/Description;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 167
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->access$300(Lorg/junit/rules/Stopwatch;)V

    .line 168
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    iget-object v1, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-static {v1}, Lorg/junit/rules/Stopwatch;->access$200(Lorg/junit/rules/Stopwatch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/junit/rules/Stopwatch;->failed(JLjava/lang/Throwable;Lorg/junit/runner/Description;)V

    .line 169
    return-void
.end method

.method protected finished(Lorg/junit/runner/Description;)V
    .locals 3
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 158
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    iget-object v1, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-static {v1}, Lorg/junit/rules/Stopwatch;->access$200(Lorg/junit/rules/Stopwatch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/junit/rules/Stopwatch;->finished(JLorg/junit/runner/Description;)V

    .line 159
    return-void
.end method

.method protected skipped(Lorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .locals 3
    .param p1, "e"    # Lorg/junit/AssumptionViolatedException;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 172
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->access$300(Lorg/junit/rules/Stopwatch;)V

    .line 173
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    iget-object v1, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-static {v1}, Lorg/junit/rules/Stopwatch;->access$200(Lorg/junit/rules/Stopwatch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/junit/rules/Stopwatch;->skipped(JLorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V

    .line 174
    return-void
.end method

.method protected starting(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 154
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->access$100(Lorg/junit/rules/Stopwatch;)V

    .line 155
    return-void
.end method

.method protected succeeded(Lorg/junit/runner/Description;)V
    .locals 3
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 162
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-static {v0}, Lorg/junit/rules/Stopwatch;->access$300(Lorg/junit/rules/Stopwatch;)V

    .line 163
    iget-object v0, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    iget-object v1, p0, Lorg/junit/rules/Stopwatch$InternalWatcher;->this$0:Lorg/junit/rules/Stopwatch;

    invoke-static {v1}, Lorg/junit/rules/Stopwatch;->access$200(Lorg/junit/rules/Stopwatch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/junit/rules/Stopwatch;->succeeded(JLorg/junit/runner/Description;)V

    .line 164
    return-void
.end method
