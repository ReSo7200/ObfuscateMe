.class Lcom/chacha/igexperiments/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chacha/igexperiments/MainActivity;->initViewsFunctions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chacha/igexperiments/MainActivity;


# direct methods
.method constructor <init>(Lcom/chacha/igexperiments/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chacha/igexperiments/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 241
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-static {v0}, Lcom/chacha/igexperiments/MainActivity;->access$100(Lcom/chacha/igexperiments/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-static {v1}, Lcom/chacha/igexperiments/MainActivity;->access$000(Lcom/chacha/igexperiments/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v1}, Lcom/chacha/igexperiments/InfoIGVersion;->getClassToHook()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-static {v0}, Lcom/chacha/igexperiments/MainActivity;->access$100(Lcom/chacha/igexperiments/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-static {v1}, Lcom/chacha/igexperiments/MainActivity;->access$000(Lcom/chacha/igexperiments/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v1}, Lcom/chacha/igexperiments/InfoIGVersion;->getMethodToHook()Ljava/lang/String;

    move-result-object v1

    const-string v2, "methodName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-static {v0}, Lcom/chacha/igexperiments/MainActivity;->access$100(Lcom/chacha/igexperiments/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-static {v1}, Lcom/chacha/igexperiments/MainActivity;->access$000(Lcom/chacha/igexperiments/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v1}, Lcom/chacha/igexperiments/InfoIGVersion;->getSecondClassToHook()Ljava/lang/String;

    move-result-object v1

    const-string v2, "secondClassName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-static {v0}, Lcom/chacha/igexperiments/MainActivity;->access$200(Lcom/chacha/igexperiments/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Mode"

    const-string v2, "Normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-static {v0}, Lcom/chacha/igexperiments/MainActivity;->access$300(Lcom/chacha/igexperiments/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    invoke-virtual {v1}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    .line 247
    invoke-static {v2}, Lcom/chacha/igexperiments/MainActivity;->access$000(Lcom/chacha/igexperiments/MainActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v2}, Lcom/chacha/igexperiments/InfoIGVersion;->getClassToHook()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity$1;->this$0:Lcom/chacha/igexperiments/MainActivity;

    .line 248
    invoke-static {v3}, Lcom/chacha/igexperiments/MainActivity;->access$000(Lcom/chacha/igexperiments/MainActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v3}, Lcom/chacha/igexperiments/InfoIGVersion;->getMethodToHook()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 246
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_0
    const-string v0, "com.chacha.igexperiments"

    const-string v1, "IGExperiments"

    invoke-static {v0, v1}, Lcom/coniy/fileprefs/FileSharedPreferences;->makeWorldReadable(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 256
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
