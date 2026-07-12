.class public abstract Landroidx/appcompat/view/menu/g71;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/g71;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object p1, Landroidx/appcompat/view/menu/g71;->a:Ljava/lang/String;

    sput-object p0, Landroidx/appcompat/view/menu/g71;->b:Ljava/lang/String;

    sget-object p1, Landroidx/appcompat/view/menu/wj0;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Landroidx/appcompat/view/menu/cj;->b:Landroidx/appcompat/view/menu/go0$e;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
