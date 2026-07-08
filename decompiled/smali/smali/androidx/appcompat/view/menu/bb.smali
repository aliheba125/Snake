.class public abstract Landroidx/appcompat/view/menu/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/bb$a;,
        Landroidx/appcompat/view/menu/bb$b;,
        Landroidx/appcompat/view/menu/bb$c;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/bb$b;

.field public static final b:Landroidx/appcompat/view/menu/bb$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/bb$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/bb$b;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    new-instance v0, Landroidx/appcompat/view/menu/bb$c;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bb$c;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/bb;->b:Landroidx/appcompat/view/menu/bb$c;

    return-void
.end method

.method public static final synthetic a()Landroidx/appcompat/view/menu/bb$c;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/bb;->b:Landroidx/appcompat/view/menu/bb$c;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    instance-of v0, p0, Landroidx/appcompat/view/menu/bb$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/bb$a;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/bb$a;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Landroidx/appcompat/view/menu/bb$a;

    return p0
.end method

.method public static final e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Landroidx/appcompat/view/menu/bb$c;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
