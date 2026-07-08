.class public Landroidx/appcompat/view/menu/p1;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public l:Landroidx/appcompat/view/menu/iz0;

.field public m:Landroid/os/IBinder;

.field public n:Landroid/os/IBinder;

.field public o:Landroid/content/pm/ActivityInfo;

.field public p:Landroid/content/ComponentName;

.field public q:Landroid/content/Intent;

.field public r:I

.field public s:Z

.field public t:Landroidx/appcompat/view/menu/yj0;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/p1;->l:Landroidx/appcompat/view/menu/iz0;

    iput-object v0, p0, Landroidx/appcompat/view/menu/p1;->m:Landroid/os/IBinder;

    iput-object v0, p0, Landroidx/appcompat/view/menu/p1;->n:Landroid/os/IBinder;

    iput-object v0, p0, Landroidx/appcompat/view/menu/p1;->o:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroidx/appcompat/view/menu/p1;->p:Landroid/content/ComponentName;

    iput-object v0, p0, Landroidx/appcompat/view/menu/p1;->q:Landroid/content/Intent;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/p1;->r:I

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/p1;->s:Z

    iput-object v0, p0, Landroidx/appcompat/view/menu/p1;->t:Landroidx/appcompat/view/menu/yj0;

    iput-object v0, p0, Landroidx/appcompat/view/menu/p1;->u:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Landroidx/appcompat/view/menu/p1;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/p1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/p1;-><init>()V

    iput-object p0, v0, Landroidx/appcompat/view/menu/p1;->q:Landroid/content/Intent;

    iput-object p1, v0, Landroidx/appcompat/view/menu/p1;->o:Landroid/content/pm/ActivityInfo;

    new-instance p0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Landroidx/appcompat/view/menu/p1;->p:Landroid/content/ComponentName;

    iput-object p2, v0, Landroidx/appcompat/view/menu/p1;->n:Landroid/os/IBinder;

    iput p3, v0, Landroidx/appcompat/view/menu/p1;->r:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/appcompat/view/menu/p1;->u:Ljava/lang/String;

    return-object v0
.end method
