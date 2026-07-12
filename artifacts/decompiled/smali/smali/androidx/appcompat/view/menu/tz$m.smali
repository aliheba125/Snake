.class public Landroidx/appcompat/view/menu/tz$m;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
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

    invoke-static {}, Landroidx/appcompat/view/menu/dv0;->i()Landroidx/appcompat/view/menu/dv0;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/dv0;->n(Ljava/lang/String;I)Landroidx/appcompat/view/menu/aq0;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/aq0;->m:Ljava/util/List;

    return-object p1
.end method
