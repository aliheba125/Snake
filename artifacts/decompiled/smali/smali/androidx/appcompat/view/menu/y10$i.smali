.class public Landroidx/appcompat/view/menu/y10$i;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y10;
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
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/ov0;->l()Landroidx/appcompat/view/menu/ov0;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/ov0;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/nh0;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
