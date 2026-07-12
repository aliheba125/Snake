.class public final Landroidx/appcompat/view/menu/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroid/graphics/PorterDuff$Mode;

.field public static c:Landroidx/appcompat/view/menu/y2;


# instance fields
.field public a:Landroidx/appcompat/view/menu/ep0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/view/menu/y2;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/y2;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static declared-synchronized b()Landroidx/appcompat/view/menu/y2;
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/y2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/y2;->c:Landroidx/appcompat/view/menu/y2;

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->f()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Landroidx/appcompat/view/menu/y2;->c:Landroidx/appcompat/view/menu/y2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/y2;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ep0;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f()V
    .locals 3

    const-class v0, Landroidx/appcompat/view/menu/y2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/y2;->c:Landroidx/appcompat/view/menu/y2;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/y2;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/y2;-><init>()V

    sput-object v1, Landroidx/appcompat/view/menu/y2;->c:Landroidx/appcompat/view/menu/y2;

    invoke-static {}, Landroidx/appcompat/view/menu/ep0;->g()Landroidx/appcompat/view/menu/ep0;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/view/menu/y2;->a:Landroidx/appcompat/view/menu/ep0;

    sget-object v1, Landroidx/appcompat/view/menu/y2;->c:Landroidx/appcompat/view/menu/y2;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y2;->a:Landroidx/appcompat/view/menu/ep0;

    new-instance v2, Landroidx/appcompat/view/menu/y2$a;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/y2$a;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ep0;->s(Landroidx/appcompat/view/menu/ep0$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static g(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/view/menu/w01;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/ep0;->u(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/view/menu/w01;[I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y2;->a:Landroidx/appcompat/view/menu/ep0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/ep0;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y2;->a:Landroidx/appcompat/view/menu/ep0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/ep0;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
