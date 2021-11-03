CREATE TABLE "public"."comment" ("id" serial NOT NULL, "message" text NOT NULL, "author_id" integer NOT NULL, "article_id" integer NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("article_id") REFERENCES "public"."article"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("author_id") REFERENCES "public"."author"("id") ON UPDATE restrict ON DELETE restrict);