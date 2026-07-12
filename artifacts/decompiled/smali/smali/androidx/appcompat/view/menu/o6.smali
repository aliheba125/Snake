.class public Landroidx/appcompat/view/menu/o6;
.super Landroidx/appcompat/view/menu/i00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final m:Landroidx/appcompat/view/menu/o6;


# instance fields
.field public final l:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/o6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o6;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/o6;->m:Landroidx/appcompat/view/menu/o6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/i00$a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o6;->l:Ljava/util/Map;

    return-void
.end method

.method public static k()Landroidx/appcompat/view/menu/o6;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/o6;->m:Landroidx/appcompat/view/menu/o6;

    return-object v0
.end method


# virtual methods
.method public B0(Ljava/lang/String;II)I
    .locals 0

    return p2
.end method

.method public E(Ljava/lang/String;II)Landroidx/appcompat/view/menu/a70;
    .locals 0

    iget-object p3, p0, Landroidx/appcompat/view/menu/o6;->l:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/o6;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/a70;

    return-object p1
.end method

.method public O(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final h(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i0(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;
    .locals 8

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v0

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Landroidx/appcompat/view/menu/x6;->W(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p2}, Landroidx/appcompat/view/menu/a7;->d(Ljava/lang/String;Ljava/lang/String;I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/a7;->u(Ljava/lang/String;Ljava/lang/String;III)Landroidx/appcompat/view/menu/yj0;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create Process "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Landroidx/appcompat/view/menu/o6;->u2(Landroidx/appcompat/view/menu/yj0;Landroid/app/job/JobInfo;Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public u2(Landroidx/appcompat/view/menu/yj0;Landroid/app/job/JobInfo;Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobInfo;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/a70;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/a70;-><init>()V

    iput-object p2, v0, Landroidx/appcompat/view/menu/a70;->m:Landroid/app/job/JobInfo;

    iput-object p3, v0, Landroidx/appcompat/view/menu/a70;->n:Landroid/content/pm/ServiceInfo;

    iget-object p3, p0, Landroidx/appcompat/view/menu/o6;->l:Ljava/util/Map;

    iget-object v1, p1, Landroidx/appcompat/view/menu/yj0;->m:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/view/menu/o6;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Landroidx/appcompat/view/menu/u60;->b:Landroidx/appcompat/view/menu/go0$b;

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Landroidx/appcompat/view/menu/yj0;->s:I

    invoke-static {p1}, Landroidx/appcompat/view/menu/kl0;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
