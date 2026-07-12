.class public Landroidx/appcompat/view/menu/c20$q;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/c20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->j()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    goto :goto_0

    :cond_0
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    new-instance p2, Landroid/content/pm/ServiceInfo;

    invoke-direct {p2}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object p2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string p3, "com.android.chrome"

    iput-object p3, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string p3, "android.support.customtabs.ChromeCustomTabsService"

    iput-object p3, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "returned: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/appcompat/view/menu/nh0;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Landroidx/appcompat/view/menu/qv0;->x(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroidx/appcompat/view/menu/nh0;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
