.class public final synthetic Landroidx/appcompat/view/menu/kq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/er0$b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/er0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Landroidx/appcompat/view/menu/zb$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/er0;Ljava/lang/String;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/kq0;->a:Landroidx/appcompat/view/menu/er0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/kq0;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/kq0;->c:Ljava/util/Map;

    iput-object p4, p0, Landroidx/appcompat/view/menu/kq0;->d:Landroidx/appcompat/view/menu/zb$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/kq0;->a:Landroidx/appcompat/view/menu/er0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kq0;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/kq0;->c:Ljava/util/Map;

    iget-object v3, p0, Landroidx/appcompat/view/menu/kq0;->d:Landroidx/appcompat/view/menu/zb$a;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/appcompat/view/menu/er0;->A(Landroidx/appcompat/view/menu/er0;Ljava/lang/String;Ljava/util/Map;Landroidx/appcompat/view/menu/zb$a;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/appcompat/view/menu/zb;

    move-result-object p1

    return-object p1
.end method
