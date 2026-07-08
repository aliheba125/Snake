.class public abstract Landroidx/appcompat/view/menu/uz0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/uz0$e;,
        Landroidx/appcompat/view/menu/uz0$c;,
        Landroidx/appcompat/view/menu/uz0$b;,
        Landroidx/appcompat/view/menu/uz0$a;,
        Landroidx/appcompat/view/menu/uz0$f;,
        Landroidx/appcompat/view/menu/uz0$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/tz0;

.field public static final b:Landroidx/appcompat/view/menu/tz0;

.field public static final c:Landroidx/appcompat/view/menu/tz0;

.field public static final d:Landroidx/appcompat/view/menu/tz0;

.field public static final e:Landroidx/appcompat/view/menu/tz0;

.field public static final f:Landroidx/appcompat/view/menu/tz0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/uz0$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/uz0$e;-><init>(Landroidx/appcompat/view/menu/uz0$c;Z)V

    sput-object v0, Landroidx/appcompat/view/menu/uz0;->a:Landroidx/appcompat/view/menu/tz0;

    new-instance v0, Landroidx/appcompat/view/menu/uz0$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/appcompat/view/menu/uz0$e;-><init>(Landroidx/appcompat/view/menu/uz0$c;Z)V

    sput-object v0, Landroidx/appcompat/view/menu/uz0;->b:Landroidx/appcompat/view/menu/tz0;

    new-instance v0, Landroidx/appcompat/view/menu/uz0$e;

    sget-object v1, Landroidx/appcompat/view/menu/uz0$b;->a:Landroidx/appcompat/view/menu/uz0$b;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/uz0$e;-><init>(Landroidx/appcompat/view/menu/uz0$c;Z)V

    sput-object v0, Landroidx/appcompat/view/menu/uz0;->c:Landroidx/appcompat/view/menu/tz0;

    new-instance v0, Landroidx/appcompat/view/menu/uz0$e;

    invoke-direct {v0, v1, v3}, Landroidx/appcompat/view/menu/uz0$e;-><init>(Landroidx/appcompat/view/menu/uz0$c;Z)V

    sput-object v0, Landroidx/appcompat/view/menu/uz0;->d:Landroidx/appcompat/view/menu/tz0;

    new-instance v0, Landroidx/appcompat/view/menu/uz0$e;

    sget-object v1, Landroidx/appcompat/view/menu/uz0$a;->b:Landroidx/appcompat/view/menu/uz0$a;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/uz0$e;-><init>(Landroidx/appcompat/view/menu/uz0$c;Z)V

    sput-object v0, Landroidx/appcompat/view/menu/uz0;->e:Landroidx/appcompat/view/menu/tz0;

    sget-object v0, Landroidx/appcompat/view/menu/uz0$f;->b:Landroidx/appcompat/view/menu/uz0$f;

    sput-object v0, Landroidx/appcompat/view/menu/uz0;->f:Landroidx/appcompat/view/menu/tz0;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
