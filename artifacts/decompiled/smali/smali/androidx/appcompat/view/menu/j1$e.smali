.class public Landroidx/appcompat/view/menu/j1$e;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/dv0;->j(Landroid/os/IBinder;I)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
