.class public final Landroidx/appcompat/view/menu/lu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m2$d;


# static fields
.field public static final j:Landroidx/appcompat/view/menu/lu0;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v11, Landroidx/appcompat/view/menu/lu0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroidx/appcompat/view/menu/lu0;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Landroidx/appcompat/view/menu/xc1;)V

    sput-object v11, Landroidx/appcompat/view/menu/lu0;->j:Landroidx/appcompat/view/menu/lu0;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Landroidx/appcompat/view/menu/xc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/lu0;->a:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/lu0;->b:Z

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/appcompat/view/menu/lu0;->c:Ljava/lang/String;

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/lu0;->d:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/lu0;->g:Z

    iput-object p2, p0, Landroidx/appcompat/view/menu/lu0;->e:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/lu0;->f:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/lu0;->h:Ljava/lang/Long;

    iput-object p2, p0, Landroidx/appcompat/view/menu/lu0;->i:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/lu0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/lu0;

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/lu0;->a:Z

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p1}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p1}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p1}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p1}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 9

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v4

    move-object v1, v4

    move-object v3, v4

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/wf0;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
