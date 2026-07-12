.class public final Landroidx/appcompat/view/menu/dv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public c:Z

.field public d:J

.field public final synthetic e:Landroidx/appcompat/view/menu/tu1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/tu1;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/dv1;->e:Landroidx/appcompat/view/menu/tu1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/dv1;->a:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/appcompat/view/menu/dv1;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/dv1;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/dv1;->c:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/dv1;->e:Landroidx/appcompat/view/menu/tu1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/dv1;->a:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/appcompat/view/menu/dv1;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/dv1;->d:J

    :cond_0
    iget-wide v0, p0, Landroidx/appcompat/view/menu/dv1;->d:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/dv1;->e:Landroidx/appcompat/view/menu/tu1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/dv1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Landroidx/appcompat/view/menu/dv1;->d:J

    return-void
.end method
