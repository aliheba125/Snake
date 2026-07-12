.class public abstract Landroidx/appcompat/view/menu/gy0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/gy0$c;,
        Landroidx/appcompat/view/menu/gy0$b;,
        Landroidx/appcompat/view/menu/gy0$a;
    }
.end annotation


# direct methods
.method public static a(Landroidx/appcompat/view/menu/ey0;)Landroidx/appcompat/view/menu/ey0;
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/gy0$b;

    if-nez v0, :cond_2

    instance-of v0, p0, Landroidx/appcompat/view/menu/gy0$a;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/gy0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/gy0$a;-><init>(Landroidx/appcompat/view/menu/ey0;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/gy0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/gy0$b;-><init>(Landroidx/appcompat/view/menu/ey0;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/ey0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/gy0$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/gy0$c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
