.class public abstract Landroidx/appcompat/view/menu/dh0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/appcompat/view/menu/dh0;->a:I

    return-void
.end method

.method public static a(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/ih0;->c:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget v0, Landroidx/appcompat/view/menu/dh0;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/hh0;->b:Landroidx/appcompat/view/menu/go0$e;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    sget-object v0, Landroidx/appcompat/view/menu/gh0;->c:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/16 v1, 0x16

    if-lt v0, v1, :cond_3

    sget-object v0, Landroidx/appcompat/view/menu/eh0;->c:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    sget-object v0, Landroidx/appcompat/view/menu/fh0;->c:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    sget-object v0, Landroidx/appcompat/view/menu/ch0;->b:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Landroid/content/pm/PackageParser;
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/ih0;->b:Landroidx/appcompat/view/menu/go0$a;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/appcompat/view/menu/ih0;->b:Landroidx/appcompat/view/menu/go0$a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    new-instance v1, Landroid/content/pm/PackageParser$CallbackImpl;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageParser$CallbackImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setCallback(Landroid/content/pm/PackageParser$Callback;)V

    return-object v0

    :cond_0
    sget v0, Landroidx/appcompat/view/menu/dh0;->a:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/ih0;->b:Landroidx/appcompat/view/menu/go0$a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    return-object v0

    :cond_1
    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    sget-object v0, Landroidx/appcompat/view/menu/gh0;->b:Landroidx/appcompat/view/menu/go0$a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    return-object v0

    :cond_2
    const/16 v2, 0x16

    if-lt v0, v2, :cond_3

    sget-object v0, Landroidx/appcompat/view/menu/eh0;->b:Landroidx/appcompat/view/menu/go0$a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    return-object v0

    :cond_3
    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    sget-object v0, Landroidx/appcompat/view/menu/fh0;->b:Landroidx/appcompat/view/menu/go0$a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/ih0;->d:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    :cond_0
    sget v0, Landroidx/appcompat/view/menu/dh0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/gh0;->d:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    :cond_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    sget-object v0, Landroidx/appcompat/view/menu/eh0;->d:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    sget-object v0, Landroidx/appcompat/view/menu/fh0;->d:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    :cond_3
    sget-object v0, Landroidx/appcompat/view/menu/ch0;->c:Landroidx/appcompat/view/menu/go0$d;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    filled-new-array {p1, v2, v1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0
.end method
