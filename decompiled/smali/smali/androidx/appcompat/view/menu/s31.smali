.class public final Landroidx/appcompat/view/menu/s31;
.super Landroidx/appcompat/view/menu/nh;
.source "SourceFile"


# static fields
.field public static final o:Landroidx/appcompat/view/menu/s31;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/s31;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/s31;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/s31;->o:Landroidx/appcompat/view/menu/s31;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/nh;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, Landroidx/appcompat/view/menu/xj;->u:Landroidx/appcompat/view/menu/xj;

    sget-object v0, Landroidx/appcompat/view/menu/kz0;->h:Landroidx/appcompat/view/menu/cz0;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/vr0;->G(Ljava/lang/Runnable;Landroidx/appcompat/view/menu/cz0;Z)V

    return-void
.end method

.method public E(I)Landroidx/appcompat/view/menu/nh;
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/e90;->a(I)V

    sget v0, Landroidx/appcompat/view/menu/kz0;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/nh;->E(I)Landroidx/appcompat/view/menu/nh;

    move-result-object p1

    return-object p1
.end method
