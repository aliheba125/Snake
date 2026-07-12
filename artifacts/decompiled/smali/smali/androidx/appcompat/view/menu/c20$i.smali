.class public Landroidx/appcompat/view/menu/c20$i;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/c20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
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

    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->p()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->J2()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/qv0;->n(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
