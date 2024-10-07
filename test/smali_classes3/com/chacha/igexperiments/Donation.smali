.class public Lcom/chacha/igexperiments/Donation;
.super Ljava/lang/Object;
.source "Donation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$remindDonation$0(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "id"    # I

    .line 32
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "donationRemindBool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    return-void
.end method

.method static synthetic lambda$remindDonation$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "id"    # I

    .line 35
    return-void
.end method

.method static synthetic lambda$remindDonation$2(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 37
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "donationRemindBool"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-static {p0}, Lcom/chacha/igexperiments/Donation;->openDonationLink(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    return-void
.end method

.method public static openDonationLink(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=A3YW496LXQZ5A&source=url"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 19
    return-void
.end method

.method public static remindDonation(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "donationReminder"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 27
    .local v0, "nb":I
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "donationRemindBool"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 30
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Hey, do not forget to give a donation for these free works if you can, I\'m a student :) It will be very nice if you do it"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/chacha/igexperiments/Donation$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/chacha/igexperiments/Donation$$ExternalSyntheticLambda0;-><init>()V

    .line 31
    const-string v5, "Pleeeeeeeaaaaase stop"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/chacha/igexperiments/Donation$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/chacha/igexperiments/Donation$$ExternalSyntheticLambda1;-><init>()V

    .line 35
    const-string v5, "Later"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/chacha/igexperiments/Donation$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/chacha/igexperiments/Donation$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v5, "Do it now"

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 42
    .local v3, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 44
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "alert":Landroid/app/AlertDialog;
    :cond_0
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    :cond_1
    return-void
.end method
