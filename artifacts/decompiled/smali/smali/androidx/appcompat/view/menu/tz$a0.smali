.class public Landroidx/appcompat/view/menu/tz$a0;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroid/content/ComponentName;

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object p3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Landroidx/appcompat/view/menu/dv0;->G(Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
