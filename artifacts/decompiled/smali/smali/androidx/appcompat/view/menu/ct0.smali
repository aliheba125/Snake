.class public Landroidx/appcompat/view/menu/ct0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ct0$b;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Service;

.field public final b:Ljava/util/Map;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ct0;->b:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic a(Landroidx/appcompat/view/menu/ct0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ct0;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ct0;->e(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0$b;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/ct0$b;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ct0$b;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ct0;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/ct0$b;->d(Landroid/os/IBinder;)V

    :try_start_0
    new-instance p1, Landroidx/appcompat/view/menu/ct0$a;

    invoke-direct {p1, p0, p2, v0}, Landroidx/appcompat/view/menu/ct0$a;-><init>(Landroidx/appcompat/view/menu/ct0;Landroid/os/IBinder;Landroid/content/Intent$FilterComparison;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(Landroid/content/Intent;)Z
    .locals 1

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ct0;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ct0$b;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ct0$b;->a()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ct0;->e(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ct0$b;->b()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0$b;
    .locals 2

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ct0;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ct0$b;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/ct0$b;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ct0$b;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ct0;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public f()Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ct0;->a:Landroid/app/Service;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ct0;->d:I

    return v0
.end method

.method public h(Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ct0;->e(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ct0$b;->b()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ct0;->e(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ct0$b;->c()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ct0;->c:Z

    return v0
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ct0;->c:Z

    return-void
.end method

.method public l(Landroid/app/Service;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ct0;->a:Landroid/app/Service;

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/ct0;->d:I

    return-void
.end method
