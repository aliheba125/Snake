.class public Landroidx/appcompat/view/menu/qv0;
.super Landroidx/appcompat/view/menu/kv0;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/appcompat/view/menu/qv0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/qv0;

    const-class v1, Landroidx/appcompat/view/menu/m00;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/qv0;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/appcompat/view/menu/qv0;->d:Landroidx/appcompat/view/menu/qv0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/kv0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static g()Landroidx/appcompat/view/menu/qv0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qv0;->d:Landroidx/appcompat/view/menu/qv0;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/m00;->D(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public B(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/m00;->W(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "package_manager"

    return-object v0
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public h(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->U1(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->c0(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(II)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m00;->I0(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public k(II)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m00;->n1(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2, p2}, Landroidx/appcompat/view/menu/qv0;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1, p2}, Landroidx/appcompat/view/menu/qv0;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->z1(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public n(I)[Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/m00;->l1(II)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public o(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->X1(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public p(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->o2(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public q(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->g1(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public r(I)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m00;->f2(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public s(Ljava/lang/String;Landroidx/appcompat/view/menu/j50;I)Landroidx/appcompat/view/menu/k50;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->U0(Ljava/lang/String;Landroidx/appcompat/view/menu/j50;I)Landroidx/appcompat/view/menu/k50;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Ljava/lang/String;I)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m00;->F1(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public u(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/m00;->b0(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public v(Ljava/lang/String;III)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/m00;->g2(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/m00;->W0(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Landroid/content/Intent;II)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->O0(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public y(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/m00;->n(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public z(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m00;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/m00;->z0(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qv0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
