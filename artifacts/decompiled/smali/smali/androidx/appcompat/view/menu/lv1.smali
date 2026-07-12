.class public final Landroidx/appcompat/view/menu/lv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/cx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o82;->i0()Landroidx/appcompat/view/menu/cx1;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroidx/appcompat/view/menu/zj1;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Attempting to use Install Referrer Service while it is not initialized"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2, v1}, Landroidx/appcompat/view/menu/zj1;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Install Referrer Service returned a null response"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-object p1

    :goto_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v1, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to get PackageManager for Install Referrer Play Store compatibility check"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/ah0;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Failed to retrieve Play Store version for Install Referrer"

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method
