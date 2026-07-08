.class public Landroidx/appcompat/view/menu/il0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/content/pm/ActivityInfo;

.field public final c:Landroid/content/Intent;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/il0;->a:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/il0;->b:Landroid/content/pm/ActivityInfo;

    iput-object p3, p0, Landroidx/appcompat/view/menu/il0;->c:Landroid/content/Intent;

    iput-object p4, p0, Landroidx/appcompat/view/menu/il0;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/il0;
    .locals 4

    const-string v0, "_S_|_user_id_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "_S_|_activity_info_"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    const-string v2, "_S_|_target_"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const-string v3, "_S_|_activity_token_v_"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Landroidx/appcompat/view/menu/il0;

    invoke-direct {v3, v0, v1, v2, p0}, Landroidx/appcompat/view/menu/il0;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;)V

    return-object v3
.end method

.method public static b(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "_S_|_user_id_"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "_S_|_activity_info_"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "_S_|_target_"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "_S_|_activity_token_v_"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
