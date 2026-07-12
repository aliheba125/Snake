.class public abstract Landroidx/appcompat/view/menu/o9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/o9$b;,
        Landroidx/appcompat/view/menu/o9$a;,
        Landroidx/appcompat/view/menu/o9$d;,
        Landroidx/appcompat/view/menu/o9$c;
    }
.end annotation


# direct methods
.method public static a(Landroidx/appcompat/view/menu/o9$c;)Landroidx/appcompat/view/menu/j90;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/o9$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o9$a;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/o9$d;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/o9$d;-><init>(Landroidx/appcompat/view/menu/o9$a;)V

    iput-object v1, v0, Landroidx/appcompat/view/menu/o9$a;->b:Landroidx/appcompat/view/menu/o9$d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/view/menu/o9$a;->a:Ljava/lang/Object;

    :try_start_0
    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/o9$c;->a(Landroidx/appcompat/view/menu/o9$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    iput-object p0, v0, Landroidx/appcompat/view/menu/o9$a;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/o9$d;->d(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    return-object v1
.end method
