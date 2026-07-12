.class public final synthetic Landroidx/appcompat/view/menu/eq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/er0$b;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Landroidx/appcompat/view/menu/d21;


# direct methods
.method public synthetic constructor <init>(JLandroidx/appcompat/view/menu/d21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/appcompat/view/menu/eq0;->a:J

    iput-object p3, p0, Landroidx/appcompat/view/menu/eq0;->b:Landroidx/appcompat/view/menu/d21;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Landroidx/appcompat/view/menu/eq0;->a:J

    iget-object v2, p0, Landroidx/appcompat/view/menu/eq0;->b:Landroidx/appcompat/view/menu/d21;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/er0;->p(JLandroidx/appcompat/view/menu/d21;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
