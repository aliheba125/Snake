.class public Landroidx/appcompat/view/menu/rl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroid/content/pm/ServiceInfo;

.field public final c:Landroid/os/IBinder;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rl0;->a:Landroid/content/Intent;

    iput-object p2, p0, Landroidx/appcompat/view/menu/rl0;->b:Landroid/content/pm/ServiceInfo;

    iput p4, p0, Landroidx/appcompat/view/menu/rl0;->d:I

    iput p5, p0, Landroidx/appcompat/view/menu/rl0;->e:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/rl0;->c:Landroid/os/IBinder;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/rl0;
    .locals 7

    const-string v0, "_S_|_target_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    const-string v0, "_S_|_service_info_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/ServiceInfo;

    const-string v0, "_S_|_user_id_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "_S_|_start_id_"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "_S_|_token_"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/e9;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    new-instance p0, Landroidx/appcompat/view/menu/rl0;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/rl0;-><init>(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;II)V

    return-object p0
.end method

.method public static b(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;II)V
    .locals 1

    const-string v0, "_S_|_target_"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "_S_|_service_info_"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "_S_|_user_id_"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "_S_|_start_id_"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "_S_|_token_"

    invoke-static {p0, p1, p3}, Landroidx/appcompat/view/menu/e9;->c(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
